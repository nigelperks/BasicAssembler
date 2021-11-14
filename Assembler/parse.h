// Basic Assembler
// Copyright (c) 2021 Nigel Perks
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
  SYMBOL_ID assume_sym[N_SREG];
} STATE;

void init_state(STATE*, unsigned max_errors);

unsigned token_data_size(int tok);

BOOL parse_operands(STATE*, IFILE*, LEX*, OPERAND* op1, OPERAND* op2);

enum expression_type { ET_ERR, ET_ABS, ET_REL, ET_STR, ET_SEC, ET_SEG, ET_OFFSET };

#define MAX_EXPR_STR (128)

union value {
  long long n;
  int label;
  char str[MAX_EXPR_STR];
};

int expr(STATE*, IFILE*, LEX*, union value *);
BOOL make_absolute(int type, union value *);

void error(STATE*, const IFILE*, const char* fmt, ...);
void error2(STATE*, LEX* lex, const char* fmt, ...);

#endif // PARSE_H
