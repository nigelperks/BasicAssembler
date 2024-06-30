// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
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
  check_max_errors(state);
}

void error2(STATE* state, LEX* lex, const char* fmt, ...) {
  va_list ap;

  assert(state != NULL);
  assert(lex != NULL);
  assert(fmt != NULL);

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

  state->errors++;
  check_max_errors(state);
}

void check_max_errors(const STATE* state) {
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

BOOL parse_operands(STATE* state, IFILE* ifile, LEX* lex, OPERAND* oper1, OPERAND* oper2, OPERAND* oper3) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(oper1 != NULL);
  assert(oper2 != NULL);
  assert(oper3 != NULL);

  init_operand(oper1);
  init_operand(oper2);
  init_operand(oper3);

  if (lex_token(lex) != TOK_EOL) {
    if (!parse_operand(state, ifile, lex, oper1))
      return FALSE;
    if (lex_token(lex) == ',') {
      lex_next(lex);
      if (!parse_operand(state, ifile, lex, oper2))
        return FALSE;
      if (lex_token(lex) == ',') {
        lex_next(lex);
        if (!parse_operand(state, ifile, lex, oper3))
          return FALSE;
      }
      else
        add_flag(oper3, OF_NONE);
    }
    else {
      add_flag(oper2, OF_NONE);
      add_flag(oper3, OF_NONE);
    }
  }
  else {
    add_flag(oper1, OF_NONE);
    add_flag(oper2, OF_NONE);
    add_flag(oper3, OF_NONE);
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
  assert(state != NULL);
  assert(lex != NULL);
  assert(op != NULL);
  assert(op->opclass.type == OT_NONE);
  assert(op->opclass.nflag == 0);

  if (lex_token(lex) == TOK_REG8) {
    op->opclass.type = OT_REG;
    op->val.reg.no = lex_reg(lex);
    op->val.reg.size = 1;
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
    op->val.reg.no = lex_reg(lex);
    op->val.reg.size = 2;
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
    op->val.reg.no = lex_reg(lex);
    op->val.reg.size = 2;
    add_flag(op, OF_SREG);
    lex_next(lex);
    return TRUE;
  }

  if (lex_token(lex) == TOK_ST) {
    op->opclass.type = OT_ST;
    op->val.reg.no = 0;
    op->val.reg.size = 0;
    if (lex_next(lex) == '(') {
      if (lex_next(lex) == TOK_NUM) {
        if (lex_val(lex) == 0)
          add_flag(op, OF_STT);
        else if (lex_val(lex) < 8) {
          op->val.reg.no = (REGNO) lex_val(lex);
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
      if (val.string.len == 1) {
        set_immediate_absolute(op, val.string.content[0]);
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
    case ET_REL_DIFF:
      error2(state, lex, "unsupported as an operand");
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
  op->opclass.nflag = 0;
  add_flag(op, OF_IMM);
  if (n >= -0x80 && n < 0x80)
    add_flag(op, OF_IMM8);
  if (n >= 0 && n < 0x100)
    add_flag(op, OF_IMM8U);
  if (n == 1)
    add_flag(op, OF_1);
  if (n == 3)
    add_flag(op, OF_3);
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
  { TOK_FWORD,  6, OF_RM48, OF_MEM48 },
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

// Parse expression into AST, and evaluate AST into val if possible.
// Return expression type or ET_ERR on error.
int expr(STATE* state, IFILE* ifile, LEX* lex, union value * val) {
  AST* ast = parse_expr(state, ifile, lex);
  if (ast == NULL)
    return ET_ERR;
  int type = expr_type(state, ifile, ast);
  if (type != ET_ERR)
    type = eval(state, ifile, ast, val);
  delete_ast(ast);
  return type;
}

AST* new_ast(int kind) {
  AST* p = ecalloc(sizeof *p);
  p->kind = kind;
  return p;
}

void delete_ast(AST* p) {
  if (p) {
    switch (p->kind) {
      case AST_BINARY:
        delete_ast(p->u.binary.lhs);
        delete_ast(p->u.binary.rhs);
        break;
      case AST_UNARY:
        delete_ast(p->u.unary.expr);
        break;
      case AST_STRING:
        efree(p->u.string.content);
        break;
    }
    efree(p);
  }
}

// Expression parsing functions may return NULL, to become ET_ERR later.

static AST* add_expr(STATE*, IFILE*, LEX*);

// expr:
//      add-expr
AST* parse_expr(STATE* state, IFILE* ifile, LEX* lex) {
  return add_expr(state, ifile, lex);
}

static AST* mult_expr(STATE*, IFILE*, LEX*);

// add-expr:
//      add-expr ADDOP mult-expr
//      mult-expr
static AST* add_expr(STATE* state, IFILE* ifile, LEX* lex) {
  AST* node = mult_expr(state, ifile, lex);
  if (node == NULL)
    return NULL;

  while (lex_token(lex) == '+' || lex_token(lex) == '-') {
    int op = lex_token(lex);
    lex_next(lex);
    AST* rhs = mult_expr(state, ifile, lex);
    if (rhs == NULL) {
      delete_ast(node);
      return NULL;
    }
    AST* parent = new_ast(AST_BINARY);
    parent->u.binary.op = op;
    parent->u.binary.lhs = node;
    parent->u.binary.rhs = rhs;
    node = parent;
  }
  return node;
}

static AST* unary_expr(STATE*, IFILE*, LEX*);

// mult-expr:
//      mult-expr MULOP unary-expr
//      unary-expr
static AST* mult_expr(STATE* state, IFILE* ifile, LEX* lex) {
  AST* node = unary_expr(state, ifile, lex);
  if (node == NULL)
    return NULL;

  while (lex_token(lex) == '*') {
    lex_next(lex);
    AST* rhs = unary_expr(state, ifile, lex);
    if (rhs == NULL) {
      delete_ast(node);
      return NULL;
    }
    AST* parent = new_ast(AST_BINARY);
    parent->u.binary.op = '*';
    parent->u.binary.lhs = node;
    parent->u.binary.rhs = rhs;
    node = parent;
  }
  return node;
}

static AST* component_expr(STATE*, IFILE*, LEX*);

// unary-expr:
//      '-' unary-expr
//      component-expr
static AST* unary_expr(STATE* state, IFILE* ifile, LEX* lex) {
  BOOL neg = FALSE;
  if (lex_token(lex) == '-') {
    lex_next(lex);
    AST* e = unary_expr(state, ifile, lex);
    if (e == NULL)
      return NULL;
    AST* node = new_ast(AST_UNARY);
    node->u.unary.op = '-';
    node->u.unary.expr = e;
    return node;
  }

  return component_expr(state, ifile, lex);
}

static const SYMBOL* relative_label(STATE*, IFILE*, LEX*, int operator_token);
static AST* primitive_expr(STATE*, IFILE*, LEX*);

// component-expr:
//      SEG relative-label
//      OFFSET relative-label
//      primitive-expr
static AST* component_expr(STATE* state, IFILE* ifile, LEX* lex) {
  if (lex_token(lex) == TOK_SEG || lex_token(lex) == TOK_OFFSET) {
    int op = lex_token(lex);
    lex_next(lex);
    const SYMBOL* sym = relative_label(state, ifile, lex, op);
    if (sym == NULL)
      return NULL;
    AST* node = new_ast(AST_COMPONENT);
    node->u.component.op = op;
    node->u.component.sym = sym;
    return node;
  }

  return primitive_expr(state, ifile, lex);
}

static const SYMBOL* relative_label(STATE* state, IFILE* ifile, LEX* lex, int op) {
  if (lex_token(lex) != TOK_LABEL) {
    error2(state, lex, "%s requires symbol", token_name(op));
    return NULL;
  }
  SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
  if (sym == NULL)
    sym = sym_insert_relative(ifile->st, lex_lexeme(lex));
  else {
    if (sym_type(sym) != SYM_RELATIVE) {
      error2(state, lex, "%s requires relative label", token_name(op));
      return NULL;
    }
  }
  lex_next(lex);
  return sym;
}

static void match(STATE* state, LEX* lex, int tok) {
  if (lex_token(lex) == tok)
    lex_next(lex);
  else
    error2(state, lex, "expected %s", token_name(tok));
}

// primitive-expr:
//      number
//      label
//      string
//      '?'
//      '(' expr ')'
static AST* primitive_expr(STATE* state, IFILE* ifile, LEX* lex) {
  AST* node = NULL;

  switch (lex_token(lex)) {
    case TOK_NUM:
      node = new_ast(AST_NUM);
      node->u.num = lex_lval(lex);
      lex_next(lex);
      break;
    case TOK_LABEL:
      node = new_ast(AST_LABEL);
      node->u.label = sym_lookup(ifile->st, lex_lexeme(lex));
      if (node->u.label == NULL)
        node->u.label = sym_insert_unknown(ifile->st, lex_lexeme(lex));
      lex_next(lex);
      break;
    case TOK_STRING:
      node = new_ast(AST_STRING);
      node->u.string.content = lex_string_content(lex, &node->u.string.len);
      assert(node->u.string.content != NULL || node->u.string.len == 0);
      lex_next(lex);
      break;
    case '?':
      node = new_ast(AST_UNDEF);
      lex_next(lex);
      break;
    case '(':
      lex_next(lex);
      node = parse_expr(state, ifile, lex);
      if (node)
        match(state, lex, ')');
      break;
    default:
      error2(state, lex, "expression expected");
  }

  return node;
}

static int binary_type(STATE*, IFILE*, int op, AST* lhs, AST* rhs);
static int unary_type(STATE*, IFILE*, int op, AST* arg);
static int component_type(int op, const SYMBOL* label);
static int label_type(STATE*, IFILE*, SYMBOL*);

int expr_type(STATE* state, IFILE* ifile, const AST* ast) {
  if (ast == NULL)
    return ET_ERR;

  switch (ast->kind) {
    case AST_BINARY:
      return binary_type(state, ifile, ast->u.binary.op, ast->u.binary.lhs, ast->u.binary.rhs);
    case AST_UNARY:
      return unary_type(state, ifile, ast->u.unary.op, ast->u.unary.expr);
    case AST_COMPONENT:
      return component_type(ast->u.component.op, ast->u.component.sym);
    case AST_NUM:
      return ET_ABS;
    case AST_LABEL:
      return label_type(state, ifile, ast->u.label);
    case AST_STRING:
      return ET_STR;
    case AST_UNDEF:
      return ET_UNDEF;
  }

  fatal("internal error: %s: %d: unexpected AST kind: %d\n", __FILE__, __LINE__, (int) ast->kind);
  return ET_ERR;
}

static int binary_type(STATE* state, IFILE* ifile, int op, AST* lhs, AST* rhs) {
  int t1 = expr_type(state, ifile, lhs);
  if (t1 == ET_ERR)
    return ET_ERR;
  int t2 = expr_type(state, ifile, rhs);
  if (t2 == ET_ERR)
    return ET_ERR;
  if (t1 == ET_ABS && t2 == ET_ABS)
    return ET_ABS;
  if (t1 == ET_REL && t2 == ET_REL && op == '-')
    return ET_REL_DIFF;
  if (t1 == ET_ABS && t2 == ET_REL_DIFF && op == '-')
    return ET_REL_DIFF;
  error(state, ifile, "invalid expression");
  return ET_ERR;
}

static int unary_type(STATE* state, IFILE* ifile, int op, AST* arg) {
  int type = expr_type(state, ifile, arg);
  if (type == ET_ERR)
    return ET_ERR;
  assert(op == '-');
  if (type != ET_ABS) {
    error(state, ifile, "invalid unary minus");
    return ET_ERR;
  }
  return ET_ABS;
}

static int component_type(int op, const SYMBOL* label) {
  assert(op == TOK_SEG || op == TOK_OFFSET);
  assert(label != NULL);

  return op == TOK_SEG ? ET_SEG : ET_OFFSET;
}

static int label_type(STATE* state, IFILE* ifile, SYMBOL* sym) {
  assert(sym != NULL);

  if (sym_type(sym) == SYM_UNKNOWN)
    sym_init_relative(sym);

  switch (sym_type(sym)) {
    case SYM_ABSOLUTE: return ET_ABS;
    case SYM_RELATIVE: return ET_REL;
    case SYM_SECTION:  return ET_SEC;
  }

  error(state, ifile, "invalid symbol in expression: %s", sym_name(sym));
  return ET_ERR;
}

static int eval_binary(STATE*, IFILE*, int op, AST* lhs, AST* rhs, VALUE*);
static int eval_unary(STATE*, IFILE*, int op, AST* arg, VALUE*);
static int eval_component(int op, const SYMBOL* label, VALUE*);
static int eval_label(STATE*, IFILE*, SYMBOL*, VALUE*);
static int eval_string(STATE*, IFILE*, const BYTE* content, size_t len, VALUE*);

int eval(STATE* state, IFILE* ifile, const AST* ast, union value * val) {
  assert(val != NULL);

  if (ast == NULL)
    return ET_ERR;

  switch (ast->kind) {
    case AST_BINARY:
      return eval_binary(state, ifile, ast->u.binary.op, ast->u.binary.lhs, ast->u.binary.rhs, val);
    case AST_UNARY:
      return eval_unary(state, ifile, ast->u.unary.op, ast->u.unary.expr, val);
    case AST_COMPONENT:
      return eval_component(ast->u.component.op, ast->u.component.sym, val);
    case AST_NUM:
      val->n = ast->u.num;
      return ET_ABS;
    case AST_LABEL:
      return eval_label(state, ifile, ast->u.label, val);
    case AST_STRING:
      return eval_string(state, ifile, ast->u.string.content, ast->u.string.len, val);
    case AST_UNDEF:
      return ET_UNDEF;
  }

  fatal("internal error: %s: %d: unexpected kind of expression\n", __FILE__, __LINE__);
  return ET_ERR;
}

static int eval_binary(STATE* state, IFILE* ifile, int op, AST* lhs, AST* rhs, VALUE* val) {
  int t1 = eval(state, ifile, lhs, val);
  if (t1 == ET_ERR)
    return ET_ERR;
  VALUE val2;
  int t2 = eval(state, ifile, rhs, &val2);
  if (t2 == ET_ERR)
    return ET_ERR;
  if (t1 == ET_REL && t2 == ET_REL && op == '-') {
    if (sym_type(val->label) != SYM_RELATIVE || !sym_defined(val->label) ||
        sym_type(val2.label) != SYM_RELATIVE || !sym_defined(val2.label)) {
      error(state, ifile, "undefined labels in difference expression");
      return ET_ERR;
    }
    val->n = sym_relative_value(val->label) - sym_relative_value(val2.label);
    return ET_REL_DIFF;
  }
  if (t1 == ET_ABS && t2 == ET_REL_DIFF && op == '-') {
    val->n -= val2.n;
    return ET_REL_DIFF;
  }
  assert(t1 == ET_ABS && t2 == ET_ABS);
  switch (op) {
    case '+': val->n += val2.n; break;
    case '-': val->n -= val2.n; break;
    case '*': val->n *= val2.n; break;
  }
  return ET_ABS;
}

static int eval_unary(STATE* state, IFILE* ifile, int op, AST* arg, VALUE* val) {
  int type = eval(state, ifile, arg, val);
  if (type == ET_ERR)
    return ET_ERR;
  assert(op == '-');
  assert(type == ET_ABS);
  val->n = - val->n;
  return ET_ABS;
}

static int eval_component(int op, const SYMBOL* label, VALUE* val) {
  assert(op == TOK_SEG || op == TOK_OFFSET);
  assert(label != NULL);
  assert(val != NULL);

  val->label = label;
  return op == TOK_SEG ? ET_SEG : ET_OFFSET;
}

static int eval_label(STATE* state, IFILE* ifile, SYMBOL* sym, VALUE* val) {
  assert(sym != NULL);
  assert(val != NULL);

  if (sym_type(sym) == SYM_UNKNOWN)
    sym_init_relative(sym);

  switch (sym_type(sym)) {
    case SYM_ABSOLUTE:
      val->n = sym_absolute_value(sym);
      return ET_ABS;
    case SYM_RELATIVE:
      val->label = sym;
      return ET_REL;
    case SYM_SECTION:
      val->label = sym;
      return ET_SEC;
  }

  error(state, ifile, "invalid symbol in expression: %s", sym_name(sym));
  return ET_ERR;
}

// Evaluate string content and length from AST into val.
// Return expression type: ET_STR, or ET_ERR on error.
static int eval_string(STATE* state, IFILE* ifile, const BYTE* content, size_t len, VALUE* val) {
  if (len > sizeof val->string.content) {
    error(state, ifile, "string too long");
    return ET_ERR;
  }
  if (content == NULL || len == 0)
    val->string.len = 0;
  else {
    memcpy(val->string.content, content, len);
    val->string.len = (unsigned short) len;
  }
  return ET_STR;
}

BOOL make_absolute(int type, union value * val) {
  if (type == ET_STR && val->string.len == 1) {
    val->n = val->string.content[0];
    return TRUE;
  }
  return (type == ET_ABS);
}

#ifdef UNIT_TEST

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

static void test_token_data_size(CuTest* tc) {
  CuAssertIntEquals(tc, 1, token_data_size(TOK_DB));
  CuAssertIntEquals(tc, 2, token_data_size(TOK_DW));
  CuAssertIntEquals(tc, 4, token_data_size(TOK_DD));
  CuAssertIntEquals(tc, 8, token_data_size(TOK_DQ));
  CuAssertIntEquals(tc, 10, token_data_size(TOK_DT));

  CuAssertIntEquals(tc, 0, token_data_size(0));
  CuAssertIntEquals(tc, 0, token_data_size(TOK_NONE));
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

static void test_data_size_flags(CuTest* tc) {
  int rm_flag, mem_flag;

  rm_flag = -1;
  mem_flag = -1;
  CuAssertIntEquals(tc, TRUE, data_size_flags(1, &rm_flag, &mem_flag));
  CuAssertIntEquals(tc, OF_RM8, rm_flag);
  CuAssertIntEquals(tc, OF_MEM8, mem_flag);

  rm_flag = -1;
  mem_flag = -1;
  CuAssertIntEquals(tc, TRUE, data_size_flags(2, &rm_flag, &mem_flag));
  CuAssertIntEquals(tc, OF_RM16, rm_flag);
  CuAssertIntEquals(tc, OF_MEM16, mem_flag);

  rm_flag = -1;
  mem_flag = -1;
  CuAssertIntEquals(tc, TRUE, data_size_flags(4, &rm_flag, &mem_flag));
  CuAssertIntEquals(tc, OF_RM32, rm_flag);
  CuAssertIntEquals(tc, OF_MEM32, mem_flag);

  rm_flag = -1;
  mem_flag = -1;
  CuAssertIntEquals(tc, TRUE, data_size_flags(8, &rm_flag, &mem_flag));
  CuAssertIntEquals(tc, OF_RM64, rm_flag);
  CuAssertIntEquals(tc, OF_MEM64, mem_flag);

  rm_flag = -1;
  mem_flag = -1;
  CuAssertIntEquals(tc, FALSE, data_size_flags(0, &rm_flag, &mem_flag));
  CuAssertIntEquals(tc, FALSE, data_size_flags(3, &rm_flag, &mem_flag));
}

static void test_set_immediate_absolute(CuTest* tc) {
  OPERAND op;

  memset(&op, 0xff, sizeof op);
  set_immediate_absolute(&op, 0);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_IMM8U, op.opclass.flags[2]);
  CuAssertIntEquals(tc, 3, op.opclass.nflag);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, 0, op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);

  memset(&op, 0xff, sizeof op);
  set_immediate_absolute(&op, 1);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_IMM8U, op.opclass.flags[2]);
  CuAssertIntEquals(tc, OF_1, op.opclass.flags[3]);
  CuAssertIntEquals(tc, 4, op.opclass.nflag);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, 1, op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);

  memset(&op, 0xff, sizeof op);
  set_immediate_absolute(&op, -0x80);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8, op.opclass.flags[1]);
  CuAssertIntEquals(tc, 2, op.opclass.nflag);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, -0x80, op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);

  memset(&op, 0xff, sizeof op);
  set_immediate_absolute(&op, 0x80);
  CuAssertIntEquals(tc, OT_IMM, op.opclass.type);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8U, op.opclass.flags[1]);
  CuAssertIntEquals(tc, 2, op.opclass.nflag);
  CuAssertIntEquals(tc, IMM_ABS, op.val.imm.type);
  CuAssertIntEquals(tc, 0x80, op.val.imm.sval);
  CuAssertTrue(tc, op.val.imm.label == NULL);
}

static void test_new_ast(CuTest* tc) {
  AST* ast = new_ast(AST_BINARY);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_BINARY, ast->kind);
  delete_ast(ast);
}

static void test_delete_ast(CuTest* tc) {
  AST* ast;
  SYMBOL symbol;

  memset(&symbol, 0xff, sizeof symbol);

  ast = new_ast(AST_BINARY);
  ast->u.binary.lhs = new_ast(AST_UNDEF);
  ast->u.binary.rhs = new_ast(AST_UNDEF);
  delete_ast(ast);

  ast = new_ast(AST_UNARY);
  ast->u.unary.expr = new_ast(AST_UNDEF);
  delete_ast(ast);

  ast = new_ast(AST_COMPONENT);
  ast->u.component.sym = &symbol;
  delete_ast(ast);

  ast = new_ast(AST_NUM);
  ast->u.num = 1234;
  delete_ast(ast);

  ast = new_ast(AST_LABEL);
  ast->u.label = &symbol;
  delete_ast(ast);

  ast = new_ast(AST_STRING);
  ast->u.string.content = NULL;
  ast->u.string.len = 0;
  delete_ast(ast);

  ast = new_ast(AST_STRING);
  ast->u.string.content = emalloc(12);
  ast->u.string.len = 12;
  delete_ast(ast);
}

// primitive-expr:
//      number
//      label
//      string
//      ?
static void test_primitive_expr(CuTest* tc) {
  static const char text[] = "871 0FACEhFred'''cobblers'?+";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  STATE state;
  AST* ast;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  // number
  ast = primitive_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_NUM, ast->kind);
  CuAssertLongLongEquals(tc, 871, ast->u.num);
  delete_ast(ast);

  ast = primitive_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_NUM, ast->kind);
  CuAssertLongLongEquals(tc, 0xFACE, ast->u.num);
  delete_ast(ast);

  // label
  CuAssertPtrEquals(tc, NULL, sym_lookup(ifile->st, "Fred"));
  ast = primitive_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_LABEL, ast->kind);
  CuAssertPtrNotNull(tc, sym_lookup(ifile->st, "Fred"));
  delete_ast(ast);

  // string
  ast = primitive_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_STRING, ast->kind);
  CuAssertPtrEquals(tc, NULL, ast->u.string.content);
  CuAssertSizeEquals(tc, 0, ast->u.string.len);
  delete_ast(ast);

  ast = primitive_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_STRING, ast->kind);
  CuAssertPtrNotNull(tc, ast->u.string.content);
  CuAssertTrue(tc, memcmp(ast->u.string.content, "cobblers", 8) == 0);
  CuAssertSizeEquals(tc, 8, ast->u.string.len);
  delete_ast(ast);

  // ?
  ast = primitive_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_UNDEF, ast->kind);
  delete_ast(ast);

  // invalid
  CuAssertIntEquals(tc, 0, state.errors);
  ast = primitive_expr(&state, ifile, lex);
  CuAssertPtrEquals(tc, NULL, ast);
  CuAssertIntEquals(tc, 1, state.errors);

  // clean up
  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_relative_label(CuTest* tc) {
  static const char text[] = "+ Fred Sally Outside Tom:";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  STATE state;
  const SYMBOL* sym;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  // non-label
  sym = relative_label(&state, ifile, lex, TOK_OFFSET);
  CuAssertTrue(tc, sym == NULL);
  CuAssertIntEquals(tc, 1, state.errors);
  lex_next(lex);

  // new label
  sym = relative_label(&state, ifile, lex, TOK_OFFSET);
  CuAssertPtrNotNull(tc, sym);
  CuAssertPtrNotNull(tc, sym_lookup(ifile->st, "Fred"));

  // existing relative label
  SYMBOL* sally = sym_insert_relative(ifile->st, "Sally");
  sym = relative_label(&state, ifile, lex, TOK_OFFSET);
  CuAssertPtrNotNull(tc, sym);
  CuAssertTrue(tc, sym == sally);

  SYMBOL* outside = sym_insert_external(ifile->st, "Outside", 1);
  sym = relative_label(&state, ifile, lex, TOK_OFFSET);
  CuAssertPtrNotNull(tc, sym);
  CuAssertTrue(tc, sym == outside);

  // non-relative label
  sym_insert_absolute(ifile->st, "Tom");
  CuAssertIntEquals(tc, 1, state.errors);
  sym = relative_label(&state, ifile, lex, TOK_OFFSET);
  CuAssertTrue(tc, sym == NULL);
  CuAssertIntEquals(tc, 2, state.errors);
  CuAssertIntEquals(tc, TOK_LABEL, lex_token(lex));
  lex_next(lex);
  CuAssertIntEquals(tc, ':', lex_token(lex));

  // clean up
  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

// component-expr:
//      SEG relative-label
//      OFFSET relative-label
//      primitive-expr
static void test_component_expr(CuTest* tc) {
  static const char text[] = "SEG addr: SEG 1234: OFFSET addr: OFFSET 9: lavender:";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  STATE state;
  AST* ast;
  SYMBOL* addr;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  // SEG relative-label
  ast = component_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  addr = sym_lookup(ifile->st, "addr");
  CuAssertPtrNotNull(tc, addr);
  CuAssertIntEquals(tc, SYM_RELATIVE, addr->type);
  CuAssertIntEquals(tc, AST_COMPONENT, ast->kind);
  CuAssertIntEquals(tc, TOK_SEG, ast->u.component.op);
  CuAssertPtrEquals(tc, addr, (void*) ast->u.component.sym);
  delete_ast(ast);
  CuAssertIntEquals(tc, 0, state.errors);

  CuAssertIntEquals(tc, ':', lex_token(lex));
  lex_next(lex);

  ast = component_expr(&state, ifile, lex);
  CuAssertPtrEquals(tc, NULL, ast);
  CuAssertIntEquals(tc, 1, state.errors);

  CuAssertIntEquals(tc, TOK_NUM, lex_token(lex));
  lex_next(lex);
  CuAssertIntEquals(tc, ':', lex_token(lex));
  lex_next(lex);

  // OFFSET relative-label
  ast = component_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_COMPONENT, ast->kind);
  CuAssertIntEquals(tc, TOK_OFFSET, ast->u.component.op);
  CuAssertPtrEquals(tc, addr, (void*) ast->u.component.sym);
  delete_ast(ast);
  CuAssertIntEquals(tc, 1, state.errors);

  CuAssertIntEquals(tc, ':', lex_token(lex));
  lex_next(lex);

  ast = component_expr(&state, ifile, lex);
  CuAssertPtrEquals(tc, NULL, ast);
  CuAssertIntEquals(tc, 2, state.errors);

  CuAssertIntEquals(tc, TOK_NUM, lex_token(lex));
  lex_next(lex);
  CuAssertIntEquals(tc, ':', lex_token(lex));
  lex_next(lex);

  // primitive-expr
  ast = component_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_LABEL, ast->kind);
  CuAssertPtrNotNull(tc, ast->u.label);
  CuAssertPtrEquals(tc, sym_lookup(ifile->st, "lavender"), ast->u.label);
  delete_ast(ast);
  CuAssertIntEquals(tc, 2, state.errors);

  CuAssertIntEquals(tc, ':', lex_token(lex));
  lex_next(lex);

  // clean up
  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

// unary-expr:
//      '-' unary-expr
//      component-expr
static void test_unary_expr(CuTest* tc) {
  static const char text[] = "29: -X: --X:";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  STATE state;
  AST* ast;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  // component-expr
  ast = unary_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_NUM, ast->kind);
  CuAssertLongLongEquals(tc, 29, ast->u.num);
  delete_ast(ast);

  CuAssertIntEquals(tc, ':', lex_token(lex));
  lex_next(lex);

  // '-' component-expr
  ast = unary_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_UNARY, ast->kind);
  CuAssertIntEquals(tc, '-', ast->u.unary.op);
  CuAssertPtrNotNull(tc, ast->u.unary.expr);
  CuAssertIntEquals(tc, AST_LABEL, ast->u.unary.expr->kind);
  delete_ast(ast);

  CuAssertIntEquals(tc, ':', lex_token(lex));
  lex_next(lex);

  // '-' '-' component-expr
  ast = unary_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_UNARY, ast->kind);
  CuAssertIntEquals(tc, '-', ast->u.unary.op);
  AST* e = ast->u.unary.expr;
  CuAssertPtrNotNull(tc, e);
  CuAssertIntEquals(tc, AST_UNARY, e->kind);
  CuAssertIntEquals(tc, '-', e->u.unary.op);
  CuAssertPtrNotNull(tc, e->u.unary.expr);
  CuAssertIntEquals(tc, AST_LABEL, e->u.unary.expr->kind);
  delete_ast(ast);

  CuAssertIntEquals(tc, ':', lex_token(lex));
  lex_next(lex);

  // clean up
  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

// mult-expr:
//      mult-expr MULOP unary-expr
//      unary-expr
static void test_mult_expr(CuTest* tc) {
  static const char text[] = "-3-2*K*7";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  STATE state;
  AST* ast;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  // unary-expr
  ast = mult_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_UNARY, ast->kind);
  CuAssertIntEquals(tc, '-', ast->u.unary.op);
  AST* e = ast->u.unary.expr;
  CuAssertPtrNotNull(tc, e);
  CuAssertIntEquals(tc, AST_NUM, e->kind);
  CuAssertLongLongEquals(tc, 3, e->u.num);
  delete_ast(ast);

  // mult-expr '*' unary-expr
  ast = mult_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_BINARY, ast->kind);
  CuAssertIntEquals(tc, '*', ast->u.binary.op);
  AST* lhs = ast->u.binary.lhs;
  AST* rhs = ast->u.binary.rhs;
  CuAssertPtrNotNull(tc, lhs);
  CuAssertIntEquals(tc, AST_BINARY, lhs->kind);
  CuAssertIntEquals(tc, AST_NUM, rhs->kind);
  delete_ast(ast);

  // clean up
  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

// add-expr:
//      add-expr ADDOP mult-expr
//      mult-expr
static void test_add_expr(CuTest* tc) {
  static const char text[] = "3*K 2+A*7-1";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  STATE state;
  AST* ast;

  source_pass(ifile, NULL);
  init_state(&state, -1);
  lex_begin(lex, text, 1, 0);

  // mult-expr
  ast = add_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_BINARY, ast->kind);
  CuAssertIntEquals(tc, '*', ast->u.binary.op);
  CuAssertPtrNotNull(tc, ast->u.binary.lhs);
  CuAssertPtrNotNull(tc, ast->u.binary.rhs);
  CuAssertIntEquals(tc, AST_NUM, ast->u.binary.lhs->kind);
  CuAssertIntEquals(tc, AST_LABEL, ast->u.binary.rhs->kind);
  delete_ast(ast);

  // add-expr '-' mult-expr
  // (add-expr '+' mult-expr) '-' mult-expr
  ast = add_expr(&state, ifile, lex);
  CuAssertPtrNotNull(tc, ast);
  CuAssertIntEquals(tc, AST_BINARY, ast->kind);
  CuAssertIntEquals(tc, '-', ast->u.binary.op);

  AST* lhs = ast->u.binary.lhs;
  AST* rhs = ast->u.binary.rhs;
  CuAssertPtrNotNull(tc, lhs);
  CuAssertPtrNotNull(tc, rhs);
  CuAssertIntEquals(tc, AST_BINARY, lhs->kind);
  CuAssertIntEquals(tc, '+', lhs->u.binary.op);
  CuAssertIntEquals(tc, AST_NUM, rhs->kind);
  CuAssertLongLongEquals(tc, 1, rhs->u.num);

  rhs = lhs->u.binary.rhs;
  lhs = lhs->u.binary.lhs;
  CuAssertPtrNotNull(tc, lhs);
  CuAssertPtrNotNull(tc, rhs);
  CuAssertIntEquals(tc, AST_NUM, lhs->kind);
  CuAssertIntEquals(tc, AST_BINARY, rhs->kind);
  CuAssertLongLongEquals(tc, 2, lhs->u.num);
  CuAssertIntEquals(tc, '*', rhs->u.binary.op);

  delete_ast(ast);

  // clean up
  delete_lex(lex);
  delete_ifile(ifile);
  delete_source(src);
}

static void test_make_absolute(CuTest* tc) {
  VALUE val;
  BOOL succ;

  val.n = -1234;
  succ = make_absolute(ET_ABS, &val);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertLongLongEquals(tc, -1234, val.n);

  SYMBOL symbol;
  memset(&symbol, 0xff, sizeof symbol);
  val.label = &symbol;
  succ = make_absolute(ET_OFFSET, &val);
  CuAssertIntEquals(tc, FALSE, succ);
  CuAssertPtrEquals(tc, &symbol, (void*) val.label);

  val.string.len = 0;
  succ = make_absolute(ET_STR, &val);
  CuAssertIntEquals(tc, FALSE, succ);

  val.string.content[0] = '*';
  val.string.len = 1;
  succ = make_absolute(ET_STR, &val);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertLongLongEquals(tc, '*', val.n);

  strcpy(val.string.content, "**");
  val.string.len = 2;
  succ = make_absolute(ET_STR, &val);
  CuAssertIntEquals(tc, FALSE, succ);
}

static void test_eval_string(CuTest* tc) {
  static const char text[] = "";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  STATE state;
  VALUE val;
  int type;
  char buff[sizeof val.string.content];

  source_pass(ifile, NULL);
  init_state(&state, -1);

  // null empty string
  memset(&val, 0xff, sizeof val);
  type = eval_string(&state, ifile, NULL, 0, &val);
  CuAssertIntEquals(tc, ET_STR, type);
  CuAssertIntEquals(tc, 0, val.string.len);

  // non-null empty string
  memset(&val, 0xff, sizeof val);
  type = eval_string(&state, ifile, "", 0, &val);
  CuAssertIntEquals(tc, ET_STR, type);
  CuAssertIntEquals(tc, 0, val.string.len);

  // non-empty string
  memset(buff, '*', sizeof buff);
  type = eval_string(&state, ifile, buff, sizeof buff, &val);
  CuAssertIntEquals(tc, ET_STR, type);
  CuAssertTrue(tc, memcmp(val.string.content, buff, sizeof buff) == 0);
  CuAssertSizeEquals(tc, sizeof buff, val.string.len);

  // string too long
  type = eval_string(&state, ifile, buff, sizeof buff + 1, &val);
  CuAssertIntEquals(tc, ET_ERR, type);

  // clean up
  delete_ifile(ifile);
  delete_source(src);
}

static void test_eval_label(CuTest* tc) {
  static const char text[] = "";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  STATE state;
  VALUE val;
  int type;
  SYMBOL symbol;

  source_pass(ifile, NULL);
  init_state(&state, -1);

  symbol.name = "Fred";

  // SYM_UNKNOWN -> SYM_RELATIVE
  symbol.type = SYM_UNKNOWN;
  symbol.defined = FALSE;
  val.label = NULL;
  type = eval_label(&state, ifile, &symbol, &val);
  CuAssertIntEquals(tc, ET_REL, type);
  CuAssertPtrEquals(tc, &symbol, (void*) val.label);
  CuAssertIntEquals(tc, SYM_RELATIVE, symbol.type);

  // SYM_RELATIVE
  val.label = NULL;
  type = eval_label(&state, ifile, &symbol, &val);
  CuAssertIntEquals(tc, ET_REL, type);
  CuAssertPtrEquals(tc, &symbol, (void*) val.label);

  // SYM_ABSOLUTE
  symbol.type = SYM_ABSOLUTE;
  symbol.defined = TRUE;
  symbol.u.abs.val = -912;
  val.n = 0;
  type = eval_label(&state, ifile, &symbol, &val);
  CuAssertIntEquals(tc, ET_ABS, type);
  CuAssertLongLongEquals(tc, -912, val.n);

  // SYM_SECTION
  symbol.type = SYM_SECTION;
  val.label = NULL;
  type = eval_label(&state, ifile, &symbol, &val);
  CuAssertIntEquals(tc, ET_SEC, type);
  CuAssertPtrEquals(tc, &symbol, (void*) val.label);

  // clean up
  delete_ifile(ifile);
  delete_source(src);
}

static void test_eval_component(CuTest* tc) {
  static const char text[] = "";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  STATE state;
  VALUE val;
  int type;
  SYMBOL symbol;

  source_pass(ifile, NULL);
  init_state(&state, -1);

  symbol.name = "Fred";

  // OFFSET label
  val.label = 0;
  type = eval_component(TOK_OFFSET, &symbol, &val);
  CuAssertIntEquals(tc, ET_OFFSET, type);
  CuAssertPtrEquals(tc, &symbol, (void*) val.label);

  // SEG label
  val.label = 0;
  type = eval_component(TOK_SEG, &symbol, &val);
  CuAssertIntEquals(tc, ET_SEG, type);
  CuAssertPtrEquals(tc, &symbol, (void*) val.label);

  // clean up
  delete_ifile(ifile);
  delete_source(src);
}

static void test_unary_type(CuTest* tc) {
  static const char text[] = "";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  STATE state;
  int type;
  AST* arg;

  source_pass(ifile, NULL);
  init_state(&state, -1);

  // - 1234
  arg = new_ast(AST_NUM);
  arg->u.num = 1234;
  type = unary_type(&state, ifile, '-', arg);
  CuAssertIntEquals(tc, ET_ABS, type);
  delete_ast(arg);

  // - - K
  SYMBOL K;
  K.name = "K";
  K.type = SYM_ABSOLUTE;
  K.defined = TRUE;
  K.u.abs.val = 9040;
  AST* p = new_ast(AST_LABEL);
  p->u.label = &K;
  arg = new_ast(AST_UNARY);
  arg->u.unary.op = '-';
  arg->u.unary.expr = p;
  type = unary_type(&state, ifile, '-', arg);
  CuAssertIntEquals(tc, ET_ABS, type);
  delete_ast(arg);

  // - relative
  SYMBOL addr;
  addr.name = "addr";
  addr.type = SYM_RELATIVE;
  addr.defined = TRUE;
  addr.u.rel.val = 0x1000;
  arg = new_ast(AST_LABEL);
  arg->u.label = &addr;
  CuAssertIntEquals(tc, 0, state.errors);
  type = unary_type(&state, ifile, '-', arg);
  CuAssertIntEquals(tc, ET_ERR, type);
  CuAssertIntEquals(tc, 1, state.errors);
  delete_ast(arg);

  // clean up
  delete_ifile(ifile);
  delete_source(src);
}

static void test_eval_unary(CuTest* tc) {
  static const char text[] = "";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  STATE state;
  VALUE val;
  int type;
  AST* arg;

  source_pass(ifile, NULL);
  init_state(&state, -1);

  // - 1234
  arg = new_ast(AST_NUM);
  arg->u.num = 1234;
  val.n = 0;
  type = eval_unary(&state, ifile, '-', arg, &val);
  CuAssertIntEquals(tc, ET_ABS, type);
  CuAssertLongLongEquals(tc, -1234, val.n);
  delete_ast(arg);

  // - - K
  SYMBOL K;
  K.name = "K";
  K.type = SYM_ABSOLUTE;
  K.defined = TRUE;
  K.u.abs.val = 9040;
  AST* p = new_ast(AST_LABEL);
  p->u.label = &K;
  arg = new_ast(AST_UNARY);
  arg->u.unary.op = '-';
  arg->u.unary.expr = p;
  val.n = 0;
  type = eval_unary(&state, ifile, '-', arg, &val);
  CuAssertIntEquals(tc, ET_ABS, type);
  CuAssertLongLongEquals(tc, 9040, val.n);
  delete_ast(arg);

  // clean up
  delete_ifile(ifile);
  delete_source(src);
}

static void test_binary_type(CuTest* tc) {
  static const char text[] = "";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  STATE state;
  int type;
  AST* lhs;
  AST* rhs;

  source_pass(ifile, NULL);
  init_state(&state, -1);

  // 23 + K

  SYMBOL K;
  K.name = "K";
  K.type = SYM_ABSOLUTE;
  K.defined = TRUE;
  K.u.abs.val = 9040;

  lhs = new_ast(AST_NUM);
  lhs->u.num = 23;
  rhs = new_ast(AST_LABEL);
  rhs->u.label = &K;
  type = binary_type(&state, ifile, '+', lhs, rhs);
  CuAssertIntEquals(tc, ET_ABS, type);
  delete_ast(lhs);
  delete_ast(rhs);

  // relative - 0x40

  SYMBOL addr;
  addr.name = "addr";
  addr.type = SYM_RELATIVE;
  addr.defined = TRUE;

  lhs = new_ast(AST_LABEL);
  lhs->u.label = &addr;
  rhs = new_ast(AST_NUM);
  rhs->u.num = 0x40;
  CuAssertIntEquals(tc, 0, state.errors);
  type = binary_type(&state, ifile, '+', lhs, rhs);
  CuAssertIntEquals(tc, ET_ERR, type);
  CuAssertIntEquals(tc, 1, state.errors);
  delete_ast(lhs);
  delete_ast(rhs);

  // clean up
  delete_ifile(ifile);
  delete_source(src);
}

static void test_eval_binary(CuTest* tc) {
  static const char text[] = "";
  SOURCE* src = load_source_mem(text);
  IFILE* ifile = new_ifile(src);
  STATE state;
  VALUE val;
  int type;
  AST* lhs;
  AST* rhs;

  source_pass(ifile, NULL);
  init_state(&state, -1);

  // 23 + K

  SYMBOL K;
  K.name = "K";
  K.type = SYM_ABSOLUTE;
  K.defined = TRUE;
  K.u.abs.val = 9040;

  lhs = new_ast(AST_NUM);
  lhs->u.num = 23;
  rhs = new_ast(AST_LABEL);
  rhs->u.label = &K;
  val.n = 0;
  type = eval_binary(&state, ifile, '+', lhs, rhs, &val);
  CuAssertIntEquals(tc, ET_ABS, type);
  CuAssertLongLongEquals(tc, 9063, val.n);
  delete_ast(lhs);
  delete_ast(rhs);

  // clean up
  delete_ifile(ifile);
  delete_source(src);
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
  CuAssertIntEquals(tc, REG_BH, op.val.reg.no);
  CuAssertIntEquals(tc, 1, op.val.reg.size);
  CuAssertIntEquals(tc, 3, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM8, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG8, op.opclass.flags[2]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_REG, op.opclass.type);
  CuAssertIntEquals(tc, REG_AL, op.val.reg.no);
  CuAssertIntEquals(tc, 1, op.val.reg.size);
  CuAssertIntEquals(tc, 4, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM8, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG8, op.opclass.flags[2]);
  CuAssertIntEquals(tc, OF_AL, op.opclass.flags[3]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_REG, op.opclass.type);
  CuAssertIntEquals(tc, REG_SI, op.val.reg.no);
  CuAssertIntEquals(tc, 2, op.val.reg.size);
  CuAssertIntEquals(tc, 3, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM16, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG16, op.opclass.flags[2]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_REG, op.opclass.type);
  CuAssertIntEquals(tc, REG_AX, op.val.reg.no);
  CuAssertIntEquals(tc, 2, op.val.reg.size);
  CuAssertIntEquals(tc, 4, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM16, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG16, op.opclass.flags[2]);
  CuAssertIntEquals(tc, OF_AX, op.opclass.flags[3]);

  init_operand(&op);
  succ = parse_operand(&state, ifile, lex, &op);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_SREG, op.opclass.type);
  CuAssertIntEquals(tc, SR_ES, op.val.reg.no);
  CuAssertIntEquals(tc, 2, op.val.reg.size);
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
  CuAssertIntEquals(tc, 3, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_IMM8U, op.opclass.flags[2]);

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
  CuAssertIntEquals(tc, 3, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_IMM8U, op.opclass.flags[2]);

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
  sym_define_relative(behind_label, 0, 0x492);

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
  CuAssertIntEquals(tc, 4, op.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8, op.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_IMM8U, op.opclass.flags[2]);
  CuAssertIntEquals(tc, OF_3, op.opclass.flags[3]);

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
  sym_define_relative(behind_label, 0, 0x492);

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
    // line 0: no operands
    ";no operands\n"
    // line 1: one operand
    "[bx+di-40h]\n"
    // line 2: one operand followed by incorrect syntax
    "AX-2\n"
    // line 3: two operands
    "BH,99h;comment\n"
    // line 4: three operands
    "40h,DX,[SI-8]\n"
    // line 5: invalid operand
    "*p ; invalid\n"
    ;
  SOURCE* src = load_source_mem(mem);
  IFILE* ifile = new_ifile(src);
  LEX* lex = new_lex(source_name(src));
  OPERAND op1, op2, op3;
  BOOL succ;

  source_pass(ifile, NULL);
  init_state(&state, -1);

  // No operands
  lex_begin(lex, source_text(src, 0), source_lineno(src, 0), 0);
  memset(&op1, 0xff, sizeof op1);
  memset(&op2, 0xff, sizeof op2);
  memset(&op3, 0xff, sizeof op3);
  succ = parse_operands(&state, ifile, lex, &op1, &op2, &op3);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_NONE, op1.opclass.type);
  CuAssertIntEquals(tc, 1, op1.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op1.opclass.flags[0]);
  CuAssertIntEquals(tc, OT_NONE, op2.opclass.type);
  CuAssertIntEquals(tc, 1, op2.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op2.opclass.flags[0]);
  CuAssertIntEquals(tc, OT_NONE, op3.opclass.type);
  CuAssertIntEquals(tc, 1, op3.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op3.opclass.flags[0]);

  // One operand
  lex_begin(lex, source_text(src, 1), source_lineno(src, 1), 0);
  memset(&op1, 0xff, sizeof op1);
  memset(&op2, 0xff, sizeof op2);
  memset(&op3, 0xff, sizeof op3);
  succ = parse_operands(&state, ifile, lex, &op1, &op2, &op3);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_MEM, op1.opclass.type);
  CuAssertIntEquals(tc, 2, op1.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op1.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_MEM, op1.opclass.flags[1]);
  CuAssertIntEquals(tc, OT_NONE, op2.opclass.type);
  CuAssertIntEquals(tc, 1, op2.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op2.opclass.flags[0]);
  CuAssertIntEquals(tc, OT_NONE, op3.opclass.type);
  CuAssertIntEquals(tc, 1, op3.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op3.opclass.flags[0]);

  // One operand followed by incorrect syntax
  lex_begin(lex, source_text(src, 2), source_lineno(src, 2), 0);
  memset(&op1, 0xff, sizeof op1);
  memset(&op2, 0xff, sizeof op2);
  memset(&op3, 0xff, sizeof op3);
  succ = parse_operands(&state, ifile, lex, &op1, &op2, &op3);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_REG, op1.opclass.type);
  CuAssertIntEquals(tc, REG_AX, op1.val.reg.no);
  CuAssertIntEquals(tc, 2, op1.val.reg.size);
  CuAssertIntEquals(tc, 4, op1.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op1.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM16, op1.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG16, op1.opclass.flags[2]);
  CuAssertIntEquals(tc, OF_AX, op1.opclass.flags[3]);
  CuAssertIntEquals(tc, OT_NONE, op2.opclass.type);
  CuAssertIntEquals(tc, 1, op2.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op2.opclass.flags[0]);
  CuAssertIntEquals(tc, OT_NONE, op3.opclass.type);
  CuAssertIntEquals(tc, 1, op3.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op3.opclass.flags[0]);

  // Two operands
  lex_begin(lex, source_text(src, 3), source_lineno(src, 3), 0);
  memset(&op1, 0xff, sizeof op1);
  memset(&op2, 0xff, sizeof op2);
  memset(&op3, 0xff, sizeof op3);
  succ = parse_operands(&state, ifile, lex, &op1, &op2, &op3);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_REG, op1.opclass.type);
  CuAssertIntEquals(tc, REG_BH, op1.val.reg.no);
  CuAssertIntEquals(tc, 1, op1.val.reg.size);
  CuAssertIntEquals(tc, 3, op1.opclass.nflag);
  CuAssertIntEquals(tc, OF_RM, op1.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_RM8, op1.opclass.flags[1]);
  CuAssertIntEquals(tc, OF_REG8, op1.opclass.flags[2]);
  CuAssertIntEquals(tc, OT_IMM, op2.opclass.type);
  CuAssertIntEquals(tc, IMM_ABS, op2.val.imm.type);
  CuAssertIntEquals(tc, 0x99, op2.val.imm.sval);
  CuAssertTrue(tc, op2.val.imm.label == NULL);
  CuAssertIntEquals(tc, 2, op2.opclass.nflag);
  CuAssertIntEquals(tc, OF_IMM, op2.opclass.flags[0]);
  CuAssertIntEquals(tc, OF_IMM8U, op2.opclass.flags[1]);
  CuAssertIntEquals(tc, OT_NONE, op3.opclass.type);
  CuAssertIntEquals(tc, 1, op3.opclass.nflag);
  CuAssertIntEquals(tc, OF_NONE, op3.opclass.flags[0]);

  // Three operands: line 4: 40h,DX,[SI-8]
  lex_begin(lex, source_text(src, 4), source_lineno(src, 4), 0);
  memset(&op1, 0xff, sizeof op1);
  memset(&op2, 0xff, sizeof op2);
  memset(&op3, 0xff, sizeof op2);
  succ = parse_operands(&state, ifile, lex, &op1, &op2, &op3);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, OT_IMM, op1.opclass.type);
  CuAssertIntEquals(tc, OT_REG, op2.opclass.type);
  CuAssertIntEquals(tc, OT_MEM, op3.opclass.type);

  // Invalid operand
  lex_begin(lex, source_text(src, 5), source_lineno(src, 5), 0);
  memset(&op1, 0xff, sizeof op1);
  memset(&op2, 0xff, sizeof op2);
  memset(&op3, 0xff, sizeof op2);
  CuAssertIntEquals(tc, 0, state.errors);
  succ = parse_operands(&state, ifile, lex, &op1, &op2, &op3);
  CuAssertIntEquals(tc, FALSE, succ);
  CuAssertIntEquals(tc, 1, state.errors);

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
  CuAssertLongLongEquals(tc, 11, val.n); // now with operator precedence

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
  SUITE_ADD_TEST(suite, test_token_data_size);
  SUITE_ADD_TEST(suite, test_size_override);
  SUITE_ADD_TEST(suite, test_data_size_flags);
  SUITE_ADD_TEST(suite, test_set_immediate_absolute);
  SUITE_ADD_TEST(suite, test_new_ast);
  SUITE_ADD_TEST(suite, test_delete_ast);
  SUITE_ADD_TEST(suite, test_primitive_expr);
  SUITE_ADD_TEST(suite, test_relative_label);
  SUITE_ADD_TEST(suite, test_component_expr);
  SUITE_ADD_TEST(suite, test_unary_expr);
  SUITE_ADD_TEST(suite, test_mult_expr);
  SUITE_ADD_TEST(suite, test_add_expr);
  SUITE_ADD_TEST(suite, test_make_absolute);
  SUITE_ADD_TEST(suite, test_unary_type);
  SUITE_ADD_TEST(suite, test_binary_type);
  SUITE_ADD_TEST(suite, test_eval_string);
  SUITE_ADD_TEST(suite, test_eval_label);
  SUITE_ADD_TEST(suite, test_eval_component);
  SUITE_ADD_TEST(suite, test_eval_unary);
  SUITE_ADD_TEST(suite, test_eval_binary);
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
  SUITE_ADD_TEST(suite, test_expr);
  SUITE_ADD_TEST(suite, test_expr_operand);
  return suite;
}

#endif // UNIT_TEST
