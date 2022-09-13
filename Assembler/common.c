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

void select_cpu(STATE* state, LEX* lex) {
  switch (lex_token(lex)) {
    case TOK_P8086: state->cpu = (1 << P86) | (1 << P87); break;
    case TOK_P8087: state->cpu |= (1 << P87); break;
    case TOK_PNO87: state->cpu &= ~(1 << P87); break;
    default: fatal("internal error: select_cpu: invalid token\n"); break;
  }
  lex_next(lex);
}

bool wait_precedes(const IFILE* ifile) {
  int op;
  return ifile->pos > 0 && ((op = ifile->recs[ifile->pos - 1].op) == TOK_WAIT || op == TOK_FWAIT);
}

void define_dollar(STATE* state, IFILE* ifile) {
  SYMBOL* sym = sym_lookup(ifile->st, "$");
  assert(sym != NULL);
  DWORD pc = (state->curseg == NO_SEG) ? 0 : segment_pc(ifile, state->curseg);
  sym_update_relative(sym, state->curseg, 0, pc);
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

size_t byte_expr_size(int type, VALUE* val, BOOL *init) {
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

size_t word_expr_size(int type, VALUE* val, BOOL *init) {
  size_t size = 0;

  switch (type) {
    case ET_ERR:
      break;
    case ET_UNDEF:
      *init = UNINIT;
      size = 2;
      break;
    case ET_ABS:
    case ET_REL:
    case ET_SEC:
    case ET_SEG:
    case ET_OFFSET:
    case ET_REL_DIFF:
      *init = INIT;
      size = 2;
      break;
    case ET_STR:
      if (make_absolute(type, val)) {
        *init = INIT;
        size = 2;
      }
      break;
    default:
      assert(0 && "unknown ET");
  }

  return size;
}

size_t dword_expr_size(int type, VALUE* val, BOOL *init) {
  size_t size = 0;

  if (type == ET_UNDEF) {
    *init = UNINIT;
    size = 4;
  }
  else if (make_absolute(type, val)) {
    *init = INIT;
    size = 4;
  }

  return size;
}

size_t qword_expr_size(int type, VALUE* val, BOOL *init) {
  size_t size = 0;

  if (type == ET_UNDEF) {
    *init = UNINIT;
    size = 8;
  }
  else if (make_absolute(type, val)) {
    *init = INIT;
    size = 8;
  }

  return size;
}

size_t tbyte_expr_size(int type, VALUE* val, BOOL *init) {
  size_t size = 0;

  // TODO: allow some kind of "long hex" value, not just long or even long long values

  if (type == ET_UNDEF) {
    *init = UNINIT;
    size = 10;
  }
  else if (make_absolute(type, val)) {
    *init = INIT;
    size = 10;
  }

  return size;
}
