// Basic Assembler
// Copyright (c) 2021 Nigel Perks
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
