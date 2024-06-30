// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Routines common to more than one pass.

// The idea is that parse.c is utilities and operand-parsing, lower level than
// passes themselves, while common.c is pass processing that happens to be
// shared.

#include <assert.h>
#include "common.h"
#include "instable.h"

void perform_ends(STATE* state, IFILE* ifile, LEX* lex) {
  assert(ifile != NULL);
  assert(lex != NULL);

  if (state->curseg == NO_SEG)
    error2(state, lex, "no segment is open");

  if (lex_token(lex) == TOK_LABEL) {
    SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
    if (sym == NULL || sym_type(sym) != SYM_SECTION || sym_section_type(sym) != ST_SEGMENT)
      error2(state, lex, "segment name expected: %s", lex_lexeme(lex));
    else if (state->curseg != NO_SEG && sym_section_ordinal(sym) != state->curseg)
      error2(state, lex, "mismatched segment name");
    lex_next(lex);
  }

  state->curseg = NO_SEG;
}

BOOL string_instruction(const INSDEF* def) {
  assert(def != NULL);
  return def->oper1 == OF_DI || def->oper1 == OF_DI8 || def->oper1 == OF_DI16 ||
         def->oper1 == OF_SI || def->oper1 == OF_SI8 || def->oper1 == OF_SI16;
}

void perform_codeseg(STATE* state, IFILE* ifile, LEX* lex) {
  if (ifile->model_group) {
    state->assume_sym[SR_CS] = ifile->model_group;
    state->assume_sym[SR_DS] = ifile->model_group;
    state->assume_sym[SR_ES] = ifile->model_group;
    state->assume_sym[SR_SS] = ifile->model_group;
    state->curseg = sym_section_ordinal(ifile->codeseg);
  }
  else
    error2(state, lex, "no memory model");
}

void perform_dataseg(STATE* state, IFILE* ifile, LEX* lex) {
  if (ifile->model_group) {
    state->assume_sym[SR_CS] = ifile->model_group;
    state->assume_sym[SR_DS] = ifile->model_group;
    state->assume_sym[SR_ES] = ifile->model_group;
    state->assume_sym[SR_SS] = ifile->model_group;
    state->curseg = sym_section_ordinal(ifile->dataseg);
  }
  else
    error2(state, lex, "no memory model");
}

void perform_udataseg(STATE* state, IFILE* ifile, LEX* lex) {
  if (ifile->model_group) {
    state->assume_sym[SR_CS] = ifile->model_group;
    state->assume_sym[SR_DS] = ifile->model_group;
    state->assume_sym[SR_ES] = ifile->model_group;
    state->assume_sym[SR_SS] = ifile->model_group;
    state->curseg = sym_section_ordinal(ifile->udataseg);
  }
  else
    error2(state, lex, "no memory model");
}

bool parse_alignment(STATE* state, LEX* lex, unsigned *p2) {
  assert(state != NULL);
  assert(lex != NULL);
  assert(p2 != NULL);

  if (lex_token(lex) != TOK_NUM) {
    error2(state, lex, "alignment number expected");
    return false;
  }

  unsigned long val = lex_val(lex);
  lex_next(lex);
  *p2 = 0;
  while ((val & 1) == 0) {
    val >>= 1;
    ++*p2;
  }
  if (val != 1) {
    error2(state, lex, "alignment must be a power of 2");
    return false;
  }

  return true;
}

void select_cpu(STATE* state, int op) {
  switch (op) {
    case TOK_P286N: state->cpu = M_86 | M_87 | M_286N | M_287; break;
    case TOK_P286:  state->cpu = M_86 | M_87 | M_286N | M_287 | M_286P; break;
    case TOK_P8086: state->cpu = M_86 | M_87; break;
    case TOK_P8087: state->cpu |= M_87; break;
    case TOK_P287:  state->cpu |= M_87 | M_287; break;
    case TOK_PNO87: state->cpu &= ~(M_87 | M_287); break;
    default: fatal("internal error: select_cpu: invalid token: %s\n", token_name(op)); break;
  }
}

void define_dollar(STATE* state, IFILE* ifile) {
  SYMBOL* sym = sym_lookup(ifile->st, "$");
  assert(sym != NULL);
  DWORD pc = (state->curseg == NO_SEG) ? 0 : segment_pc(ifile, state->curseg);
  sym_update_relative(sym, state->curseg, pc);
}

bool valid_byte_expr(int type) {
  return type == ET_UNDEF || type == ET_ABS || type == ET_STR;
}

bool valid_word_expr(int type) {
  return type == ET_UNDEF || type == ET_ABS || type == ET_STR || type == ET_REL || type == ET_REL_DIFF || type == ET_OFFSET || type == ET_SEG || type == ET_SEC;
}

bool valid_dword_expr(int type) {
  return type == ET_UNDEF || type == ET_ABS || type == ET_STR;
}

bool valid_qword_expr(int type) {
  return type == ET_UNDEF || type == ET_ABS || type == ET_STR;
}

bool valid_tbyte_expr(int type) {
  return type == ET_UNDEF || type == ET_ABS || type == ET_STR;
}

DataSize byte_expr_size(int type, VALUE* val, BOOL *init) {
  if (type == ET_UNDEF) {
    *init = UNINIT;
    return 1;
  }

  if (type == ET_ABS) {
    *init = INIT;
    return 1;
  }

  if (type == ET_STR) {
    *init = INIT;
    return val->string.len;
  }

  return 0;
}

DataSize word_expr_size(int type, VALUE* val, BOOL *init) {
  switch (type) {
    case ET_ERR:
      return 0;
    case ET_UNDEF:
      *init = UNINIT;
      return 2;
    case ET_ABS:
    case ET_REL:
    case ET_SEC:
    case ET_SEG:
    case ET_OFFSET:
    case ET_REL_DIFF:
      *init = INIT;
      return 2;
    case ET_STR:
      if (make_absolute(type, val)) {
        *init = INIT;
        return 2;
      }
      break;
    default:
      assert(0 && "unknown ET");
  }

  return 0;
}

DataSize dword_expr_size(int type, VALUE* val, BOOL *init) {
  if (type == ET_UNDEF) {
    *init = UNINIT;
    return 4;
  }

  if (make_absolute(type, val)) {
    *init = INIT;
    return 4;
  }

  return 0;
}

DataSize qword_expr_size(int type, VALUE* val, BOOL *init) {
  if (type == ET_UNDEF) {
    *init = UNINIT;
    return 8;
  }

  if (make_absolute(type, val)) {
    *init = INIT;
    return 8;
  }

  return 0;
}

DataSize tbyte_expr_size(int type, VALUE* val, BOOL *init) {
  if (type == ET_UNDEF) {
    *init = UNINIT;
    return 10;
  }

  if (make_absolute(type, val)) {
    *init = INIT;
    return 10;
  }

  return 0;
}

unsigned wait_needed(STATE* state, const INSDEF* def) {
  assert(state != NULL);
  assert(def != NULL);
  switch (def->wait_prefix) {
    case NOPR: return 0;
    case W286: return 1;
    case WAIT: return cpu_enabled(state->cpu, P286N) ? 0 : 1;
    case WAI2: return cpu_enabled(state->cpu, P286N) ? 1 : 2;
  }
  fatal("internal error: %s: %d: unknown WAIT prefix category: %d\n", __FILE__, __LINE__, def->wait_prefix);
  return false;
}

static unsigned operand_size(const OPERAND*);

// When the instruction table does not specify the size of some operand -
// for example OF_RM can be 8- or 16-bit register or memory data -
// check that operand sizes match.
void match_operand_sizes(STATE* state, LEX* lex, int flag1, int flag2,
                         const OPERAND* oper1, const OPERAND* oper2) {
  if (flag1 == OF_RM || flag1 == OF_INDIR || flag2 == OF_RM || flag2 == OF_INDIR) {
    unsigned size1 = operand_size(oper1);
    unsigned size2 = operand_size(oper2);
    if (size1 && size2 && size1 != size2)
      error2(state, lex, "operand sizes do not match");
  }
}

static unsigned operand_size(const OPERAND* op) {
  switch (op->opclass.type) {
    case OT_REG:
    case OT_SREG:
    case OT_ST:
      return op->val.reg.size;
    case OT_MEM:
      if (op->val.mem.size_override)
        return op->val.mem.size_override;
      if (op->val.mem.disp_type == REL_DISP)
        return sym_data_size(op->val.mem.disp.label);
      return 0;
    case OT_IMM:
    case OT_JUMP:
    case OT_NONE:
      return 0;
  }
  fatal("internal error: operand_size: unknown operand type: %d\n", (int) op->opclass.type);
  return 0;
}
