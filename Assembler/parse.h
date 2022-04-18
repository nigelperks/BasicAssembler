// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Operand-parsing common to passes.

#ifndef PARSE_H
#define PARSE_H

#include "ifile.h"
#include "operand.h"
#include "lexer.h"
#include "token.h"
#include "utils.h"

// State of an assembly pass, as opposed to the intermediate file,
// which is built up for ongoing use throughout the assembly.
typedef struct {
  unsigned errors;
  unsigned max_errors;
  SEGNO curseg;
  const SYMBOL* assume_sym[N_SREG];
} STATE;

void init_state(STATE*, unsigned max_errors);

unsigned token_data_size(int tok);

BOOL parse_operands(STATE*, IFILE*, LEX*, OPERAND* op1, OPERAND* op2);

enum expression_type {
  ET_ERR,    // invalid expression
  ET_ABS,    // absolute symbol or number literal
  ET_REL,    // relative symbol
  ET_STR,    // '...' or "..."
  ET_SEC,    // section (segment or group) name
  ET_SEG,    // SEG name
  ET_OFFSET  // OFFSET name
};

#define MAX_EXPR_STR (128)

union value {
  long long n;
  const SYMBOL* label;
  char str[MAX_EXPR_STR];
};

int expr(STATE*, IFILE*, LEX*, union value *);
BOOL make_absolute(int type, union value *);

void error(STATE*, const IFILE*, const char* fmt, ...);
void error2(STATE*, LEX* lex, const char* fmt, ...);

#endif // PARSE_H
