// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Operand-parsing common to passes

#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <assert.h>
#include "parse.h"
#include "utils.h"

void init_state(STATE* state, unsigned max_errors) {
  unsigned i;

  assert(state != NULL);

  state->errors = 0;
  state->max_errors = max_errors;
  state->curseg = NO_SEG;
  for (i = 0; i < N_SREG; i++)
    state->assume_sym[i] = NULL;

  state->cpu = (1 << P86) | (1 << P87);
  state->jumps = false;
}

void error(STATE* state, const IFILE* ifile, const char* fmt, ...) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(fmt != NULL);

  fprintf(stderr, "Error: %s: ", source_name(ifile->source));

  if (ifile->pos < ifile->used) {
    const IREC* irec = get_irec_const(ifile, ifile->pos);
    unsigned lineno = irec_lineno(ifile, irec);

    fprintf(stderr, "%u: ", lineno);
  }

  va_list ap;
  va_start(ap, fmt);
  vfprintf(stderr, fmt, ap);
  va_end(ap);

  fputc('\n', stderr);

  state->errors++;

  if (state->errors >= state->max_errors)
    fatal("maximum errors reached\n");
}

void error2(STATE* state, LEX* lex, const char* fmt, ...) {
  va_list ap;

  assert(state != NULL);
  assert(lex != NULL);
  assert(fmt != NULL);

  state->errors++;

  fprintf(stderr, "Error: %s: %u: ", lex_source_name(lex), lex_lineno(lex));

  va_start(ap, fmt);
  vfprintf(stderr, fmt, ap);
  va_end(ap);

  fputs(":\n", stderr);

  const unsigned TAB = 4;

  print_notabs(stderr, lex_text(lex), TAB);
  fputc('\n', stderr);
  position(stderr, lex_text(lex), lex_token_pos(lex), TAB);
  fputs("^\n", stderr);

  if (state->errors >= state->max_errors)
    fatal("maximum errors reached\n");
}

unsigned token_data_size(int tok) {
  unsigned size = 0;
  switch (tok) {
    case TOK_DB: size = 1; break;
    case TOK_DW: size = 2; break;
    case TOK_DD: size = 4; break;
    case TOK_DQ: size = 8; break;
    case TOK_DT: size = 10; break;
  }
  return size;
}

static BOOL parse_operand(STATE*, IFILE*, LEX*, OPERAND*);

BOOL parse_operands(STATE* state, IFILE* ifile, LEX* lex, OPERAND* oper1, OPERAND* oper2) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(oper1 != NULL);
  assert(oper2 != NULL);

  init_operand(oper1);
  init_operand(oper2);

  if (lex_token(lex) != TOK_EOL) {
    if (!parse_operand(state, ifile, lex, oper1))
      return FALSE;
    if (lex_token(lex) == ',') {
      lex_next(lex);
      if (!parse_operand(state, ifile, lex, oper2))
        return FALSE;
    }
    else
      add_flag(oper2, OF_NONE);
  }
  else {
    add_flag(oper1, OF_NONE);
    add_flag(oper2, OF_NONE);
  }

  if (oper1->opclass.type == OT_MEM && oper2->opclass.type == OT_MEM) {
    if (oper1->val.mem.size_override && oper2->val.mem.size_override) {
        if (oper1->val.mem.size_override != oper2->val.mem.size_override)
            error2(state, lex, "inconsistent size overrides");
    }
  }

  return TRUE;
}

static BOOL parse_mem(STATE*, IFILE*, LEX*, OPERAND*);

static void set_immediate_absolute(OPERAND*, long);

static BOOL parse_operand(STATE* state, IFILE* ifile, LEX* lex, OPERAND* op) {
  int lookahead;

  assert(state != NULL);
  assert(lex != NULL);
  assert(op != NULL);
  assert(op->opclass.type == OT_NONE);
  assert(op->opclass.nflag == 0);

  lookahead = lex_token(lex);

  if (lex_token(lex) == TOK_REG8) {
    op->opclass.type = OT_REG;
    op->val.reg = lex_reg(lex);
    add_flag(op, OF_RM);
    add_flag(op, OF_RM8);
    add_flag(op, OF_REG8);
    if (lex_reg(lex) == REG_AL)
      add_flag(op, OF_AL);
    else if (lex_reg(lex) == REG_CL)
      add_flag(op, OF_CL);
    lex_next(lex);
    return TRUE;
  }

  if (lex_token(lex) == TOK_REG16) {
    op->opclass.type = OT_REG;
    op->val.reg = lex_reg(lex);
    add_flag(op, OF_RM);
    add_flag(op, OF_RM16);
    add_flag(op, OF_REG16);
    if (lex_reg(lex) == REG_AX)
      add_flag(op, OF_AX);
    else if (lex_reg(lex) == REG_DX)
      add_flag(op, OF_DX);
    lex_next(lex);
    return TRUE;
  }

  if (lex_token(lex) == TOK_SREG) {
    op->opclass.type = OT_SREG;
    op->val.reg = lex_reg(lex);
    add_flag(op, OF_SREG);
    lex_next(lex);
    return TRUE;
  }

  if (lex_token(lex) == TOK_ST) {
    op->opclass.type = OT_ST;
    op->val.reg = 0;
    if (lex_next(lex) == '(') {
      if (lex_next(lex) == TOK_NUM) {
        if (lex_val(lex) == 0)
          add_flag(op, OF_STT);
        else if (lex_val(lex) < 8) {
          op->val.reg = lex_val(lex);
          add_flag(op, OF_STI);
        }
        else
          error2(state, lex, "invalid stack index");
        if (lex_next(lex) == ')')
          lex_next(lex);
        else
          error2(state, lex, "')' expected");
      }
      else
        error2(state, lex, "numeric stack index expected");
    }
    else
      add_flag(op, OF_STT);
    return TRUE;
  }

  if (lex_token(lex) == '[') {
    lex_next(lex);
    if (!parse_mem(state, ifile, lex, op))
      return FALSE;
    if (lex_token(lex) == ']') {
      lex_next(lex);
      return TRUE;
    }
    error(state, ifile, "']' expected");
    return FALSE;
  }

  if (lex_token(lex) == TOK_SHORT || lex_token(lex) == TOK_NEAR) {
    op->opclass.type = OT_JUMP;
    op->val.jump.distance = (lex_token(lex) == TOK_SHORT) ? SHORT : NEAR;
    lex_next(lex);

    // Accept CS: for the sake of absolute addresses.
    // Given CS:LABEL, we do not check LABEL is in CS's segment.
    if (lex_token(lex) == TOK_SREG) {
      if (lex_reg(lex) != SR_CS)
        error2(state, lex, "invalid segment register for jump target");
      if (lex_next(lex) == ':')
        lex_next(lex);
      else
        error2(state, lex, "':' expected");
    }

    if (lex_token(lex) == TOK_NUM) {
      op->val.jump.target_type = ABS_JUMP;
      op->val.jump.target.abs = lex_val(lex);
      lex_next(lex);
      add_flag(op, OF_JUMP);
      return TRUE;
    }    

    if (lex_token(lex) == TOK_LABEL) {
      SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
      if (sym == NULL)
        sym = sym_insert_relative(ifile->st, lex_lexeme(lex));
      lex_next(lex);

      if (sym_type(sym) == SYM_RELATIVE) {
        op->val.jump.target_type = LABEL_JUMP;
        op->val.jump.target.label = sym;
        add_flag(op, OF_JUMP);
        return TRUE;
      }

      if (sym_type(sym) == SYM_ABSOLUTE) {
        op->val.jump.target_type = ABS_JUMP;
        op->val.jump.target.abs = sym_absolute_value(sym);
        add_flag(op, OF_JUMP);
        return TRUE;
      }
    }

    error2(state, lex, "invalid jump target");
    return FALSE;
  }

  if (lex_token(lex) == TOK_FAR) {
    op->opclass.type = OT_JUMP;
    op->val.jump.distance = FAR;
    lex_next(lex);

    if (lex_token(lex) == TOK_NUM) {
      op->val.jump.target_type = FAR_JUMP;
      DWORD w = lex_val(lex);
      if (w > (WORD)(-1))
        error2(state, lex, "segment address out of 16-bit range");
      op->val.jump.target.far.seg = (WORD) w;

      if (lex_next(lex) != ':') {
        error2(state, lex, "':' expected");
        return FALSE;
      }
      lex_next(lex);

      if (lex_token(lex) == TOK_NUM) {
        w = lex_val(lex);
        if (w > (WORD)(-1))
          error2(state, lex, "offset out of 16-bit range");
        op->val.jump.target.far.offset = (WORD) w;
        lex_next(lex);
        add_flag(op, OF_FAR);
        return TRUE;
      }
    }    
    else if (lex_token(lex) == TOK_LABEL) {
      SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
      if (sym == NULL)
        sym = sym_insert_relative(ifile->st, lex_lexeme(lex));
      lex_next(lex);

      if (sym_type(sym) == SYM_RELATIVE) {
        op->val.jump.target_type = LABEL_JUMP;
        op->val.jump.target.label = sym;
        add_flag(op, OF_FAR);
        return TRUE;
      }
    }

    error2(state, lex, "invalid jump target");
    return FALSE;
  }

  union value val;
  int type = expr(state, ifile, lex, &val);
  BOOL succ = FALSE;
  switch (type) {
    case ET_ERR:
      break;
    case ET_ABS:
      set_immediate_absolute(op, (long) val.n);
      succ = TRUE;
      break;
    case ET_REL:
      op->opclass.type = OT_JUMP;
      op->val.jump.distance = NEAR;
      op->val.jump.target_type = LABEL_JUMP;
      op->val.jump.target.label = val.label;
      add_flag(op, OF_JUMP);
      succ = TRUE;
      break;
    case ET_STR:
      if (val.str[0] != '\0' && val.str[1] == '\0') {
        set_immediate_absolute(op, val.str[0]);
        succ = TRUE;
      }
      else
        error2(state, lex, "string is not a valid immediate operand");
      break;
    case ET_SEC:
      op->opclass.type = OT_IMM;
      op->val.imm.type = IMM_SECTION;
      op->val.imm.label = val.label;
      op->val.imm.sval = 0;
      add_flag(op, OF_IMM);
      succ = TRUE;
      break;
    case ET_SEG:
      op->opclass.type = OT_IMM;
      op->val.imm.type = IMM_SEG;
      op->val.imm.label = val.label;
      op->val.imm.sval = 0;
      add_flag(op, OF_IMM);
      succ = TRUE;
      break;
    case ET_OFFSET:
      op->opclass.type = OT_IMM;
      op->val.imm.type = IMM_OFFSET;
      op->val.imm.label = val.label;
      op->val.imm.sval = 0;
      add_flag(op, OF_IMM);
      succ = TRUE;
      break;
    default:
      assert(0 && "unexpected expr type");
  }

  return succ;
}

static void set_immediate_absolute(OPERAND* op, long n) {
  op->opclass.type = OT_IMM;
  op->val.imm.type = IMM_ABS;
  op->val.imm.sval = n;
  op->val.imm.label = NULL;
  add_flag(op, OF_IMM);
  if (n >= -0x80 && n < 0x80) {
    add_flag(op, OF_IMM8);
    if (n == 1)
      add_flag(op, OF_1);
    if (n == 3)
      add_flag(op, OF_3);
  }
}

static BOOL size_override_token(int tok, unsigned *size, int *rm_flag, int *mem_flag);
static BOOL parse_disp(STATE*, IFILE*, LEX*, OPERAND*);

static BOOL parse_mem(STATE* state, IFILE* ifile, LEX* lex, OPERAND* op) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(op != NULL);

  op->opclass.type = OT_MEM;
  struct mem * const m = &op->val.mem;
  m->base_reg = NO_REG;
  m->index_reg = NO_REG;
  m->disp_type = NO_DISP;
  m->sreg_override = NO_REG;
  m->size_override = 0;
  add_flag(op, OF_RM);
  add_flag(op, OF_MEM);

  unsigned size;
  int rm_flag, mem_flag;

  if (size_override_token(lex_token(lex), &size, &rm_flag, &mem_flag)) {
    m->size_override = size;
    add_flag(op, rm_flag);
    add_flag(op, mem_flag);
    if (lex_next(lex) == TOK_PTR)
      lex_next(lex);
  }

  if (lex_token(lex) == TOK_SREG) {
    m->sreg_override = lex_reg(lex);
    if (lex_next(lex) == ':')
      lex_next(lex);
    else
      error2(state, lex, "missing ':' in segment register override");
  }

  if (lex_token(lex) == TOK_REG16) {
    int reg = lex_reg(lex);
    if (reg == REG_BX || reg == REG_BP) {
      m->base_reg = reg;
      lex_next(lex);
      if (lex_token(lex) == '+') {
        lex_next(lex);
        if (lex_token(lex) == TOK_REG16) {
          reg = lex_reg(lex);
          if (reg == REG_SI || reg == REG_DI) {
            m->index_reg = reg;
            lex_next(lex);
            if (lex_token(lex) == '+') {
              lex_next(lex);
              return parse_disp(state, ifile, lex, op);
            }
            else if (lex_token(lex) == '-')
              return parse_disp(state, ifile, lex, op);
            return TRUE;
          }
          error(state, ifile, "invalid index register");
          return FALSE;
        }
        return parse_disp(state, ifile, lex, op);
      }
      else if (lex_token(lex) == '-')
        return parse_disp(state, ifile, lex, op);
      return TRUE;
    }
    if (reg == REG_SI || reg == REG_DI) {
      m->index_reg = reg;
      lex_next(lex);
      if (lex_token(lex) == '+') {
        lex_next(lex);
        return parse_disp(state, ifile, lex, op);
      }
      else if (lex_token(lex) == '-')
        return parse_disp(state, ifile, lex, op);
      switch (reg) {
        case REG_SI:
          add_flag(op, OF_SI);
          switch (m->size_override) {
            case 1: add_flag(op, OF_SI8); break;
            case 2: add_flag(op, OF_SI16); break;
          }
          break;
        case REG_DI:
          add_flag(op, OF_DI);
          switch (m->size_override) {
            case 1: add_flag(op, OF_DI8); break;
            case 2: add_flag(op, OF_DI16); break;
          }
          break;
      }
      return TRUE;
    }
    error(state, ifile, "invalid register in memory addressing");
    return FALSE;
  }

  add_flag(op, OF_INDIR);
  return parse_disp(state, ifile, lex, op);
}

static BOOL data_size_flags(unsigned size, int *rm_flag, int *mem_flag);

static BOOL parse_disp(STATE* state, IFILE* ifile, LEX* lex, OPERAND* op) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(op != NULL);
  assert(op->opclass.type = OT_MEM);

  struct mem * const m = &op->val.mem;
  BOOL neg = FALSE;

  if (lex_token(lex) == '-') {
    neg = TRUE;
    lex_next(lex);
  }

  if (lex_token(lex) == TOK_NUM) {
    m->disp_type = ABS_DISP;
    m->disp.sval = lex_val(lex);
    lex_next(lex);
    if (neg)
      m->disp.sval = - m->disp.sval;
    return TRUE;
  }

  if (lex_token(lex) == TOK_LABEL) {
    SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
    if (sym == NULL)
      sym = sym_insert_relative(ifile->st, lex_lexeme(lex));

    switch (sym_type(sym)) {
      case SYM_ABSOLUTE:
        m->disp_type = ABS_DISP;
        m->disp.sval = sym_absolute_value(sym);
        if (neg)
          m->disp.sval = - m->disp.sval;
        break;
      case SYM_RELATIVE:
        if (neg) {
          error2(state, lex, "negating an address label: %s", sym_name(sym));
          return FALSE;
        }
        m->disp_type = REL_DISP;
        m->disp.label = sym;
        int rm_flag, mem_flag;
        if (data_size_flags(sym_data_size(sym), &rm_flag, &mem_flag)) {
          if (m->size_override == 0 && !has_flag(op, rm_flag)) {
            add_flag(op, rm_flag);
            add_flag(op, mem_flag);
          }
        }
        break;
      default:
        error2(state, lex, "invalid label type in operand: %s", sym_name(sym));
        return FALSE;
    }
    lex_next(lex);
    return TRUE;
  }

  error2(state, lex, "invalid memory operand: %s", token_name(lex_token(lex)));
  return FALSE;
}

static const struct data_size {
  int token;
  unsigned size;
  int rm_flag;
  int mem_flag;
} data_sizes[] = {
  { TOK_BYTE,   1, OF_RM8,  OF_MEM8 },
  { TOK_WORD,   2, OF_RM16, OF_MEM16 },
  { TOK_DWORD,  4, OF_RM32, OF_MEM32 },
  { TOK_QWORD,  8, OF_RM64, OF_MEM64 },
  { TOK_TBYTE, 10, OF_RM80, OF_MEM80 },
  // end marker
  { TOK_NONE }
};

static BOOL size_override_token(int tok, unsigned *size, int *rm_flag,
                                int *mem_flag) {
  for (const struct data_size * p = data_sizes; p->token != TOK_NONE; p++) {
    if (p->token == tok) {
      *size = p->size;
      *rm_flag = p->rm_flag;
      *mem_flag = p->mem_flag;
      return TRUE;
    }
  }

  return FALSE;
}

static BOOL data_size_flags(unsigned size, int *rm_flag, int *mem_flag) {
  for (const struct data_size * p = data_sizes; p->token != TOK_NONE; p++) {
    if (p->size == size) {
      *rm_flag = p->rm_flag;
      *mem_flag = p->mem_flag;
      return TRUE;
    }
  }

  return FALSE;
}




static int unary_expr(STATE*, IFILE*, LEX*, union value *);

static BOOL expr_operator(int t) {
  return t == '+' || t == '-' || t == '*';
}

int expr(STATE* state, IFILE* ifile, LEX* lex, union value * val) {
  int type = unary_expr(state, ifile, lex, val);
  if (type == ET_ERR)
    return ET_ERR;

  while (expr_operator(lex_token(lex))) {
    int op = lex_token(lex);
    lex_next(lex);
    union value val2;
    int type2 = unary_expr(state, ifile, lex, &val2);
    if (type2 == ET_ERR)
      return ET_ERR;
    if (make_absolute(type, val) && make_absolute(type2, &val2)) {
      switch (op) {
        case '+': val->n += val2.n; break;
        case '-': val->n -= val2.n; break;
        case '*': val->n *= val2.n; break;
        default: assert(0 && "unknown operator");
      }
      type = ET_ABS;
    }
    else {
      error2(state, lex, "invalid expression");
      return ET_ERR;
    }
  }

  return type;
}

static int primitive_expr(STATE*, IFILE*, LEX*, union value *);

static int unary_expr(STATE* state, IFILE* ifile, LEX* lex, union value * val) {
  BOOL neg = FALSE;
  if (lex_token(lex) == '-') {
    neg = TRUE;
    lex_next(lex);
  }

  int type = primitive_expr(state, ifile, lex, val);
  if (type == ET_ERR)
    return ET_ERR;

  if (neg) {
    if (!make_absolute(type, val)) {
      error2(state, lex, "invalid unary minus");
      return ET_ERR;
    }
    val->n = - val->n;
    type = ET_ABS;
  }

  return type;
}

static const SYMBOL* parse_label(STATE*, IFILE*, LEX*, const char* opname);

static int primitive_expr(STATE* state, IFILE* ifile, LEX* lex, union value * val) {
  long n = 0;

  if (lex_token(lex) == TOK_NUM) {
    val->n = lex_lval(lex);
    lex_next(lex);
    return ET_ABS;
  }

  if (lex_token(lex) == '?') {
    lex_next(lex);
    return ET_UNDEF;
  }

  if (lex_token(lex) == TOK_SEG) {
    const SYMBOL* sym = parse_label(state, ifile, lex, "SEG");
    if (sym == NULL)
      return ET_ERR;
    val->label = sym;
    return ET_SEG;
  }

  if (lex_token(lex) == TOK_OFFSET) {
    const SYMBOL* sym = parse_label(state, ifile, lex, "OFFSET");
    if (sym == NULL)
      return ET_ERR;
    val->label = sym;
    return ET_OFFSET;
  }

  if (lex_token(lex) == TOK_LABEL) {
    SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
    if (sym == NULL) {
      val->label = sym_insert_relative(ifile->st, lex_lexeme(lex));
      lex_next(lex);
      return ET_REL;
    }
    switch (sym_type(sym)) {
      case SYM_ABSOLUTE:
        val->n = sym_absolute_value(sym);
        lex_next(lex);
        return ET_ABS;
      case SYM_RELATIVE:
        val->label = sym;
        lex_next(lex);
        return ET_REL;
      case SYM_SECTION:
        val->label = sym;
        lex_next(lex);
        return ET_SEC;
      default:
        error2(state, lex, "invalid symbol in expression: %s", sym_name(sym));
        return ET_ERR;
    }
  }

  if (lex_token(lex) == TOK_STR) {
    size_t len;
    BYTE* content = lex_string_content(lex, &len);
    if (content == NULL) {
      assert(len == 0);
      val->str[0] = '\0';
    }
    else if (len + 1 > sizeof val->str) {
      error2(state, lex, "string too long");
      val->str[0] = '\0';
    }
    else
      strcpy(val->str, content);
    efree(content);
    lex_next(lex);
    return ET_STR;
  }

  error2(state, lex, "expression expected");
  return ET_ERR;
}

BOOL make_absolute(int type, union value * val) {
  if (type == ET_STR && strlen(val->str) == 1) {
    val->n = val->str[0];
    return TRUE;
  }
  return (type == ET_ABS);
}

static const SYMBOL* parse_label(STATE* state, IFILE* ifile, LEX* lex, const char* opname) {
  if (lex_next(lex) != TOK_LABEL) {
    error2(state, lex, "%s requires symbol", opname);
    return NULL;
  }
  SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
  if (sym == NULL)
    sym = sym_insert_relative(ifile->st, lex_lexeme(lex));
  else {
    if (sym_type(sym) != SYM_RELATIVE) {
      error2(state, lex, "%s requires relative label", opname);
      return NULL;
    }
  }
  lex_next(lex);
  return sym;
}

#ifdef UNIT_TEST

#include <string.h>
#include "CuTest.h"
#include "sourcepass.h"

static void test_init_state(CuTest* tc) {
  STATE state;

  memset(&state, 0xff, sizeof state);

  init_state(&state, 33);

  CuAssertIntEquals(tc, 0, state.errors);
  CuAssertIntEquals(tc, 33, state.max_errors);
  CuAssertIntEquals(tc, NO_SEG, state.curseg);
  CuAssertTrue(tc, state.assume_sym[SR_CS] == NULL);
  CuAssertTrue(tc, state.assume_sym[SR_DS] == NULL);
  CuAssertTrue(tc, state.assume_sym[SR_ES] == NULL);
  CuAssertTrue(tc, state.assume_sym[SR_SS] == NULL);
}

static void test_error(CuTest* tc) {
  STATE state;
  SOURCE* src = load_source_mem("first line\nsecond line\n");
  IFILE* ifile = new_ifile(src);

  source_pass(ifile, NULL);
  init_state(&state, 2);

  ifile->pos = 0;
  error(&state, ifile, "something terrible: %lx", (unsigned long) 0xdeadface);

  delete_ifile(ifile);
  delete_source(src);
}

static void test_size_override(CuTest* tc) {
  unsigned size;
  int rm_flag, mem_flag;

  size = -1;
  rm_flag = -1;
  mem_flag = -1;
  CuAssertIntEquals(tc, TRUE, size_override_token(TOK_BYTE, &size, &rm_flag, &mem_flag));
  CuAssertIntEquals(tc, 1, size);
  CuAssertIntEquals(tc, OF_RM8, rm_flag);
  CuAssertIntEquals(tc, OF_MEM8, mem_flag);

  size = -1;
  rm_flag = -1;
  mem_flag = -1;
  CuAssertIntEquals(tc, TRUE, size_override_token(TOK_WORD, &size, &rm_flag, &mem_flag));
  CuAssertIntEquals(tc, 2, size);
  CuAssertIntEquals(tc, OF_RM16, rm_flag);
  CuAssertIntEquals(tc, OF_MEM16, mem_flag);

  size = -1;
  rm_flag = -1;
  mem_flag = -1;
  CuAssertIntEquals(tc, TRUE, size_override_token(TOK_DWORD, &size, &rm_flag, &mem_flag));
  CuAssertIntEquals(tc, 4, size);
  CuAssertIntEquals(tc, OF_RM32, rm_flag);
  CuAssertIntEquals(tc, OF_MEM32, mem_flag);

  size = -1;
  rm_flag = -1;
  mem_flag = -1;
  CuAssertIntEquals(tc, TRUE, size_override_token(TOK_QWORD, &size, &rm_flag, &mem_flag));
  CuAssertIntEquals(tc, 8, size);
  CuAssertIntEquals(tc, OF_RM64, rm_flag);
  CuAssertIntEquals(tc, OF_MEM64, mem_flag);

  size = -1;
  rm_flag = -1;
  mem_flag = -1;
  CuAssertIntEquals(tc, FALSE, size_override_token(TOK_MOV, &size, &rm_flag, &mem_flag));
}

static void test_parse_disp(CuTest* tc) {
  static const char text[] = "1234h -76 newlab -newlab cabbage -cabbage";
  SOURCE* src = load_source_mem(text);
  STATE state;
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op;
  struct mem * const mem = &op.val.mem;
  BOOL succ;
  SYMBOL* sym;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  op.opclass.type = OT_MEM;

  // positive number literal: 1234h
  mem->disp_type = -1;
  mem->disp.sval = -1;
  succ = parse_disp(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, ABS_DISP, mem->disp_type);
  CuAssertIntEquals(tc, 0x1234, mem->disp.sval);

  // negative number literal: -76
  mem->disp_type = -1;
  mem->disp.sval = -1;
  succ = parse_disp(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, ABS_DISP, mem->disp_type);
  CuAssertIntEquals(tc, -76, mem->disp.sval);

  // undefined label: newlab
  mem->disp_type = -1;
  mem->disp.label = NULL;
  succ = parse_disp(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, REL_DISP, mem->disp_type);
  CuAssertTrue(tc, mem->disp.label == ifile->st->sym[0]);

  // negative address label: -newlab
  mem->disp_type = -1;
  mem->disp.label = NULL;
  CuAssertIntEquals(tc, 0, state.errors);
  succ = parse_disp(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, FALSE, succ);
  CuAssertIntEquals(tc, 1, state.errors);
  lex_next(lex);

  // equ: cabbage
  sym = sym_insert_absolute(ifile->st, "cabbage");
  sym_define_absolute(sym, 78918L);

  mem->disp_type = -1;
  mem->disp.sval = -1;
  succ = parse_disp(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, ABS_DISP, mem->disp_type);
  CuAssertIntEquals(tc, 78918L, mem->disp.sval);

  mem->disp_type = -1;
  mem->disp.sval = -1;
  succ = parse_disp(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, ABS_DISP, mem->disp_type);
  CuAssertIntEquals(tc, -78918L, mem->disp.sval);

  CuAssertIntEquals(tc, 1, state.errors);
  succ = parse_disp(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, FALSE, succ);
  CuAssertIntEquals(tc, 2, state.errors);

  // Clean up
  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_parse_mem(CuTest* tc) {
  static const char text[] =
      "bx "
      "word di "
      "dword si "
      "bp+si "
      "bx + di + 40h "
      "bp - 24h "
      "si+1234h "
      "9933h "
      "ax "
      "BX-DI "
      ;
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op;
  STATE state;
  BOOL succ;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  // [bx]
  init_operand(&op);
  succ = parse_mem(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op.opclass.type);
  CuAssertIntEquals(tc, REG_BX, op.val.mem.base_reg);
  CuAssertIntEquals(tc, NO_REG, op.val.mem.index_reg);
  CuAssertIntEquals(tc, NO_DISP, op.val.mem.disp_type);
  CuAssertIntEquals(tc, 0, op.val.mem.size_override);
  CuAssertIntEquals(tc, 2, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op.opclass.flags[1]);

  // [word di]
  init_operand(&op);
  succ = parse_mem(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op.opclass.type);
  CuAssertIntEquals(tc, NO_REG, op.val.mem.base_reg);
  CuAssertIntEquals(tc, REG_DI, op.val.mem.index_reg);
  CuAssertIntEquals(tc, NO_DISP, op.val.mem.disp_type);
  CuAssertIntEquals(tc, 2, op.val.mem.size_override);
  CuAssertIntEquals(tc, 6, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_RM16, op.opclass.flags[2]);
  CuAssertIntEquals(tc, OF_MEM16, op.opclass.flags[3]);
  CuAssertIntEquals(tc, OF_DI, op.opclass.flags[4]);
  CuAssertIntEquals(tc, OF_DI16, op.opclass.flags[5]);

  // [dword si]
  init_operand(&op);
  succ = parse_mem(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op.opclass.type);
  CuAssertIntEquals(tc, NO_REG, op.val.mem.base_reg);
  CuAssertIntEquals(tc, REG_SI, op.val.mem.index_reg);
  CuAssertIntEquals(tc, NO_DISP, op.val.mem.disp_type);
  CuAssertIntEquals(tc, 4, op.val.mem.size_override);
  CuAssertIntEquals(tc, 5, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_RM32, op.opclass.flags[2]);
  CuAssertIntEquals(tc, OF_MEM32, op.opclass.flags[3]);
  CuAssertIntEquals(tc, OF_SI, op.opclass.flags[4]);

  // [bp+si]
  init_operand(&op);
  succ = parse_mem(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op.opclass.type);
  CuAssertIntEquals(tc, REG_BP, op.val.mem.base_reg);
  CuAssertIntEquals(tc, REG_SI, op.val.mem.index_reg);
  CuAssertIntEquals(tc, NO_DISP, op.val.mem.disp_type);
  CuAssertIntEquals(tc, 0, op.val.mem.size_override);
  CuAssertIntEquals(tc, 2, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op.opclass.flags[1]);

  // [bx+di+40h]
  init_operand(&op);
  succ = parse_mem(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op.opclass.type);
  CuAssertIntEquals(tc, REG_BX, op.val.mem.base_reg);
  CuAssertIntEquals(tc, REG_DI, op.val.mem.index_reg);
  CuAssertIntEquals(tc, ABS_DISP, op.val.mem.disp_type);
  CuAssertIntEquals(tc, 0x40, op.val.mem.disp.sval);
  CuAssertIntEquals(tc, 0, op.val.mem.size_override);
  CuAssertIntEquals(tc, 2, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op.opclass.flags[1]);

  // [bp-24h]
  init_operand(&op);
  succ = parse_mem(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op.opclass.type);
  CuAssertIntEquals(tc, REG_BP, op.val.mem.base_reg);
  CuAssertIntEquals(tc, NO_REG, op.val.mem.index_reg);
  CuAssertIntEquals(tc, ABS_DISP, op.val.mem.disp_type);
  CuAssertIntEquals(tc, -0x24, op.val.mem.disp.sval);
  CuAssertIntEquals(tc, 0, op.val.mem.size_override);
  CuAssertIntEquals(tc, 2, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op.opclass.flags[1]);

  // [si+1234h]
  init_operand(&op);
  succ = parse_mem(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op.opclass.type);
  CuAssertIntEquals(tc, NO_REG, op.val.mem.base_reg);
  CuAssertIntEquals(tc, REG_SI, op.val.mem.index_reg);
  CuAssertIntEquals(tc, ABS_DISP, op.val.mem.disp_type);
  CuAssertIntEquals(tc, 0x1234, op.val.mem.disp.sval);
  CuAssertIntEquals(tc, 0, op.val.mem.size_override);
  CuAssertIntEquals(tc, 2, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op.opclass.flags[1]);

  // [9933h]
  init_operand(&op);
  succ = parse_mem(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op.opclass.type);
  CuAssertIntEquals(tc, NO_REG, op.val.mem.base_reg);
  CuAssertIntEquals(tc, NO_REG, op.val.mem.index_reg);
  CuAssertIntEquals(tc, ABS_DISP, op.val.mem.disp_type);
  CuAssertIntEquals(tc, 0x9933, op.val.mem.disp.sval);
  CuAssertIntEquals(tc, 0, op.val.mem.size_override);
  CuAssertIntEquals(tc, 3, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_INDIR, op.opclass.flags[2]);

  // [ax]
  init_operand(&op);
  CuAssertIntEquals(tc, 0, state.errors);
  succ = parse_mem(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, FALSE, succ);
  CuAssertIntEquals(tc, 1, state.errors);
  lex_next(lex);

  // [BX-DI]
  init_operand(&op);
  CuAssertIntEquals(tc, 1, state.errors);
  succ = parse_mem(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, FALSE, succ);
  CuAssertIntEquals(tc, 2, state.errors);
  lex_next(lex);

  // EOL
  CuAssertIntEquals(tc, TOK_EOL, lex_token(lex));

  // Clean up
  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_parse_operand_register(CuTest* tc) {
  STATE state;
  static const char text[] = "BH AL SI AX ES";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op;
  BOOL succ;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  // Register

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_REG, op.opclass.type);
  CuAssertIntEquals(tc, REG_BH, op.val.reg);
  CuAssertIntEquals(tc, 3, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM8, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG8, op.opclass.flags[2]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_REG, op.opclass.type);
  CuAssertIntEquals(tc, REG_AL, op.val.reg);
  CuAssertIntEquals(tc, 4, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM8, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG8, op.opclass.flags[2]);
  CuAssertIntEquals(tc, OF_AL, op.opclass.flags[3]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_REG, op.opclass.type);
  CuAssertIntEquals(tc, REG_SI, op.val.reg);
  CuAssertIntEquals(tc, 3, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM16, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG16, op.opclass.flags[2]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_REG, op.opclass.type);
  CuAssertIntEquals(tc, REG_AX, op.val.reg);
  CuAssertIntEquals(tc, 4, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM16, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG16, op.opclass.flags[2]);
  CuAssertIntEquals(tc, OF_AX, op.opclass.flags[3]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_SREG, op.opclass.type);
  CuAssertIntEquals(tc, SR_ES, op.val.reg);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_SREG, op.opclass.flags[0]);

  // Cleanup

  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_parse_operand_immediate(CuTest* tc) {
  STATE state;
  static const char text[] = "1234 7FH, -1234, -80H '*' 'AB'";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op;
  BOOL succ;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, 1234, op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, 0x7f, op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);
  CuAssertIntEquals(tc, 2, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8, op.opclass.flags[1]);

  CuAssertIntEquals(tc, ',', lex_token(lex));
  lex_next(lex);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, -1234, op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);

  CuAssertIntEquals(tc, ',', lex_token(lex));
  lex_next(lex);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, -0x80, op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);
  CuAssertIntEquals(tc, 2, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8, op.opclass.flags[1]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, '*', op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);
  CuAssertIntEquals(tc, 2, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8, op.opclass.flags[1]);

  init_operand(&op);
  CuAssertIntEquals(tc, 0, state.errors);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, FALSE, succ);
  CuAssertIntEquals(tc, 1, state.errors);

  // Cleanup

  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_parse_operand_label(CuTest* tc) {
  STATE state;
  static const char text[] = "ahead behind K TINY newlabel";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op;
  SYMBOL* ahead_label;
  SYMBOL* behind_label;
  SYMBOL* equ_label;
  SYMBOL* equ_label_imm8;
  BOOL succ;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  ahead_label = sym_insert_relative(ifile->st, "ahead");

  behind_label = sym_insert_relative(ifile->st, "behind");
  sym_define_relative(behind_label, 0, 2, 0x492);

  equ_label = sym_insert_absolute(ifile->st, "K");
  sym_define_absolute(equ_label, 903);

  equ_label_imm8 = sym_insert_absolute(ifile->st, "TINY");
  sym_define_absolute(equ_label_imm8, 3);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_JUMP, op.opclass.type);
  CuAssertIntEquals(tc, NEAR, op.val.jump.distance);
  CuAssertIntEquals(tc, LABEL_JUMP, op.val.jump.target_type);
  CuAssertTrue(tc, op.val.jump.target.label == ahead_label);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_JUMP, op.opclass.flags[0]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_JUMP, op.opclass.type);
  CuAssertIntEquals(tc, NEAR, op.val.jump.distance);
  CuAssertIntEquals(tc, LABEL_JUMP, op.val.jump.target_type);
  CuAssertTrue(tc, op.val.jump.target.label == behind_label);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_JUMP, op.opclass.flags[0]);

  // K
  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, 903, op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);

  // TINY
  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, 3, op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);
  CuAssertIntEquals(tc, 3, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_3, op.opclass.flags[2]);

  // newlabel
  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_JUMP, op.opclass.type);
  CuAssertIntEquals(tc, NEAR, op.val.jump.distance);
  CuAssertIntEquals(tc, LABEL_JUMP, op.val.jump.target_type);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_JUMP, op.opclass.flags[0]);

  // Cleanup

  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_parse_operand_offset(CuTest* tc) {
  STATE state;
  static const char text[] =
    "offset 39 "
    "OFFSET ahead "
    "OFFSET behind "
    "OFFSET newlabel2 "
    "OFFSET K "
    ;
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op;
  BOOL succ;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  SYMBOL* ahead_label = sym_insert_relative(ifile->st, "ahead");

  SYMBOL* behind_label = sym_insert_relative(ifile->st, "behind");
  sym_define_relative(behind_label, 0, 2, 0x492);

  SYMBOL* equ_label = sym_insert_absolute(ifile->st, "K");
  sym_define_absolute(equ_label, 903);

  // "offset 39 "
  init_operand(&op);
  CuAssertIntEquals(tc, 0, state.errors);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, FALSE, succ);
  CuAssertIntEquals(tc, 1, state.errors);
  CuAssertIntEquals(tc, TOK_NUM, lex_token(lex));
  lex_next(lex);

  // "OFFSET ahead "
  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, IMM_OFFSET, op.val.imm.type);
  CuAssertTrue(tc, op.val.imm.label == ahead_label);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);

  // "OFFSET behind "
  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, IMM_OFFSET, op.val.imm.type);
  CuAssertTrue(tc, op.val.imm.label == behind_label);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);

  // "OFFSET newlabel2 "
  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, IMM_OFFSET, op.val.imm.type);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);

  // "OFFSET K "
  init_operand(&op);
  CuAssertIntEquals(tc, 1, state.errors);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, FALSE, succ);
  CuAssertIntEquals(tc, 2, state.errors);
  CuAssertIntEquals(tc, TOK_LABEL, lex_token(lex));
  lex_next(lex);

  // Cleanup

  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_parse_operand_jump(CuTest* tc) {
  STATE state;
  static const char text[] =
    "SHORT 86Ah"
    "NEAR newlabel3 "
    "near K "
    ;
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op;
  BOOL succ;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  SYMBOL* equ_label = sym_insert_absolute(ifile->st, "K");
  sym_define_absolute(equ_label, 903);

  // "SHORT 86Ah"
  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_JUMP, op.opclass.type);
  CuAssertIntEquals(tc, SHORT, op.val.jump.distance);
  CuAssertIntEquals(tc, ABS_JUMP, op.val.jump.target_type);
  CuAssertIntEquals(tc, 0x86a, op.val.jump.target.abs);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_JUMP, op.opclass.flags[0]);

  // "NEAR newlabel3 "
  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_JUMP, op.opclass.type);
  CuAssertIntEquals(tc, NEAR, op.val.jump.distance);
  CuAssertIntEquals(tc, LABEL_JUMP, op.val.jump.target_type);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_JUMP, op.opclass.flags[0]);

  // "near K "
  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_JUMP, op.opclass.type);
  CuAssertIntEquals(tc, NEAR, op.val.jump.distance);
  CuAssertIntEquals(tc, ABS_JUMP, op.val.jump.target_type);
  CuAssertIntEquals(tc, 903, op.val.jump.target.abs);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_JUMP, op.opclass.flags[0]);

  // Cleanup

  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_parse_operand_memory(CuTest* tc) {
  STATE state;
  static const char text[] = "[bx] [word bp+si-40h]";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op;
  BOOL succ;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op.opclass.type);
  CuAssertIntEquals(tc, REG_BX, op.val.mem.base_reg);
  CuAssertIntEquals(tc, NO_REG, op.val.mem.index_reg);
  CuAssertIntEquals(tc, NO_DISP, op.val.mem.disp_type);
  CuAssertIntEquals(tc, 0, op.val.mem.size_override);
  CuAssertIntEquals(tc, 2, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op.opclass.flags[1]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op.opclass.type);
  CuAssertIntEquals(tc, REG_BP, op.val.mem.base_reg);
  CuAssertIntEquals(tc, REG_SI, op.val.mem.index_reg);
  CuAssertIntEquals(tc, ABS_DISP, op.val.mem.disp_type);
  CuAssertIntEquals(tc, -0x40, op.val.mem.disp.sval);
  CuAssertIntEquals(tc, 2, op.val.mem.size_override);
  CuAssertIntEquals(tc, 4, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_RM16, op.opclass.flags[2]);
  CuAssertIntEquals(tc, OF_MEM16, op.opclass.flags[3]);

  // Cleanup

  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_parse_operand_error(CuTest* tc) {
  STATE state;
  static const char text[] = "+2";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op;
  BOOL succ;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  // Invalid operand: +2
  init_operand(&op);
  CuAssertIntEquals(tc, 0, state.errors);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, FALSE, succ);
  CuAssertIntEquals(tc, 1, state.errors);
  CuAssertIntEquals(tc, '+', lex_token(lex));

  // Cleanup

  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_parse_operands(CuTest* tc) {
  STATE state;
  static const char mem[] =
    ";no operands\n"
    "[bx+di-40h]\n"
    "AX-2\n"
    "BH,99h;comment\n"
    "*p ; invalid\n"
    ;
  SOURCE* src = load_source_mem(mem);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op1, op2;
  BOOL succ;

  source_pass(ifile, NULL);
  init_state(&state, -1);

  // No operands
  lex_begin(lex, source_text(src, 0), source_lineno(src, 0), 0);
  memset(&op1, 0xff, sizeof op1);
  memset(&op2, 0xff, sizeof op2);
  succ = parse_operands(&state, ifile, lex, &op1, &op2);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_NONE, op1.opclass.type);
  CuAssertIntEquals(tc, 1, op1.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op1.opclass.flags[0]);
  CuAssertIntEquals(tc, OT_NONE, op2.opclass.type);
  CuAssertIntEquals(tc, 1, op2.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op2.opclass.flags[0]);

  // One operand
  lex_begin(lex, source_text(src, 1), source_lineno(src, 1), 0);
  memset(&op1, 0xff, sizeof op1);
  memset(&op2, 0xff, sizeof op2);
  succ = parse_operands(&state, ifile, lex, &op1, &op2);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op1.opclass.type);
  CuAssertIntEquals(tc, 2, op1.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op1.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op1.opclass.flags[1]);
  CuAssertIntEquals(tc, OT_NONE, op2.opclass.type);
  CuAssertIntEquals(tc, 1, op2.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op2.opclass.flags[0]);

  // One operand followed by incorrect syntax
  lex_begin(lex, source_text(src, 2), source_lineno(src, 2), 0);
  memset(&op1, 0xff, sizeof op1);
  memset(&op2, 0xff, sizeof op2);
  succ = parse_operands(&state, ifile, lex, &op1, &op2);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_REG, op1.opclass.type);
  CuAssertIntEquals(tc, REG_AX, op1.val.reg);
  CuAssertIntEquals(tc, 4, op1.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op1.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM16, op1.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG16, op1.opclass.flags[2]);
  CuAssertIntEquals(tc, OF_AX, op1.opclass.flags[3]);
  CuAssertIntEquals(tc, OT_NONE, op2.opclass.type);
  CuAssertIntEquals(tc, 1, op2.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op2.opclass.flags[0]);

  // Two operands
  lex_begin(lex, source_text(src, 3), source_lineno(src, 3), 0);
  memset(&op1, 0xff, sizeof op1);
  memset(&op2, 0xff, sizeof op2);
  succ = parse_operands(&state, ifile, lex, &op1, &op2);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_REG, op1.opclass.type);
  CuAssertIntEquals(tc, REG_BH, op1.val.reg);
  CuAssertIntEquals(tc, 3, op1.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op1.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM8, op1.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG8, op1.opclass.flags[2]);
  CuAssertIntEquals(tc, OT_IMM, op2.opclass.type);
  CuAssertIntEquals(tc, IMM_ABS, op2.val.imm.type);
  CuAssertIntEquals(tc, 0x99, op2.val.imm.sval);
  CuAssertTrue(tc, op2.val.imm.label == NULL);
  CuAssertIntEquals(tc, 1, op2.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op2.opclass.flags[0]);

  // Invalid operand
  lex_begin(lex, source_text(src, 4), source_lineno(src, 4), 0);
  memset(&op1, 0xff, sizeof op1);
  memset(&op2, 0xff, sizeof op2);
  CuAssertIntEquals(tc, 0, state.errors);
  succ = parse_operands(&state, ifile, lex, &op1, &op2);
  CuAssertIntEquals(tc, FALSE, succ);
  CuAssertIntEquals(tc, 1, state.errors);

  // Cleanup

  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_primitive(CuTest* tc) {
  STATE state;
  static const char text[] = "9876 newlabel HERE THING SegName 'mashed fig'''-";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  union value val;
  int type;
  SYMBOL* sym;

  source_pass(ifile, NULL);
  init_state(&state, -1);

  lex_begin(lex, text, 1, 0);

  // 9876
  type = primitive_expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_ABS, type);
  CuAssertLongLongEquals(tc, 9876, val.n);

  // newlabel
  type = primitive_expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_REL, type);
  CuAssertIntEquals(tc, 1, sym_count(ifile->st));
  CuAssertStrEquals(tc, "newlabel", sym_name(get_sym(ifile->st, 0)));
  CuAssertIntEquals(tc, SYM_RELATIVE, sym_type(get_sym(ifile->st, 0)));

  sym = sym_insert_absolute(ifile->st, "THING");
  sym_define_absolute(sym, -5781);

  const SYMBOL* here_sym = sym_insert_relative(ifile->st, "HERE");

  sym_insert_section(ifile->st, "SegName");

  // HERE
  type = primitive_expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_REL, type);
  CuAssertTrue(tc, val.label == here_sym);

  // THING
  type = primitive_expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_ABS, type);
  CuAssertLongLongEquals(tc, -5781, val.n);

  // SegName
  CuAssertIntEquals(tc, TOK_LABEL, lex_token(lex));
  type = primitive_expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_SEC, type);

  // 'mashed fig'
  CuAssertIntEquals(tc, TOK_STR, lex_token(lex));
  type = primitive_expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_STR, type);
  CuAssertStrEquals(tc, "mashed fig", val.str);

  // ''
  type = primitive_expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_STR, type);
  CuAssertStrEquals(tc, "", val.str);

  // -
  CuAssertIntEquals(tc, '-', lex_token(lex));
  type = primitive_expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_ERR, type);

  // Cleanup

  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_expr(CuTest* tc) {
  STATE state;
  static const char text[] = "-KARR  3+4*2 addr addr+0";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  union value val;
  int type;
  SYMBOL* sym;

  source_pass(ifile, NULL);
  init_state(&state, -1);

  lex_begin(lex, text, 1, 0);

  // -KARR
  sym = sym_insert_absolute(ifile->st, "KARR");
  sym_define_absolute(sym, 0xdead);
  type = expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_ABS, type);
  CuAssertLongLongEquals(tc, -0xdead, val.n);

  // 3+4*2
  type = expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_ABS, type);
  CuAssertLongLongEquals(tc, 14, val.n); // no operator precedence

  // addr addr+0"
  sym = sym_insert_relative(ifile->st, "addr");
  type = expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_REL, type);

  type = expr(&state, ifile, lex, &val);
  CuAssertIntEquals(tc, ET_ERR, type);

  // Cleanup

  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_expr_operand(CuTest* tc) {
  STATE state;
  static const char text[] = "-KARR*3";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op;
  SYMBOL* sym;
  BOOL succ;

  source_pass(ifile, NULL);
  init_state(&state, -1);

  lex_begin(lex, text, 1, 0);

  // -KARR*3
  sym = sym_insert_absolute(ifile->st, "KARR");
  sym_define_absolute(sym, 0xdead);
  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, 1, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, -0xdead*3, op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);

  // Cleanup

  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

CuSuite* parse_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_init_state);
  SUITE_ADD_TEST(suite, test_error);
  SUITE_ADD_TEST(suite, test_size_override);
  SUITE_ADD_TEST(suite, test_parse_disp);
  SUITE_ADD_TEST(suite, test_parse_mem);
  SUITE_ADD_TEST(suite, test_parse_operand_register);
  SUITE_ADD_TEST(suite, test_parse_operand_immediate);
  SUITE_ADD_TEST(suite, test_parse_operand_label);
  SUITE_ADD_TEST(suite, test_parse_operand_offset);
  SUITE_ADD_TEST(suite, test_parse_operand_jump);
  SUITE_ADD_TEST(suite, test_parse_operand_memory);
  SUITE_ADD_TEST(suite, test_parse_operand_error);
  SUITE_ADD_TEST(suite, test_parse_operands);
  SUITE_ADD_TEST(suite, test_primitive);
  SUITE_ADD_TEST(suite, test_expr);
  SUITE_ADD_TEST(suite, test_expr_operand);
  return suite;
}

#endif // UNIT_TEST
