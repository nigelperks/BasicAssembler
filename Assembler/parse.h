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
  unsigned cpu;
  const SYMBOL* assume_sym[N_SREG];
  bool jumps;
} STATE;

void init_state(STATE*, unsigned max_errors);

unsigned token_data_size(int tok);

BOOL parse_operands(STATE*, IFILE*, LEX*, OPERAND* op1, OPERAND* op2, OPERAND* op3);

enum expression_type {
  ET_ERR,    // invalid expression
  ET_UNDEF,  // undefined value: '?'
  ET_ABS,    // absolute symbol or number literal
  ET_REL,    // relative symbol
  ET_REL_DIFF,
  ET_STR,    // '...' or "..."
  ET_SEC,    // section (segment or group) name
  ET_SEG,    // SEG name
  ET_OFFSET  // OFFSET name
};

enum {
  AST_BINARY,
  AST_UNARY,
  AST_COMPONENT,
  AST_NUM,
  AST_LABEL,
  AST_STRING,
  AST_UNDEF,
};

typedef struct ast {
  short kind;
  union {
    struct {
      int op;
      struct ast * lhs;
      struct ast * rhs;
    } binary;
    struct {
      int op;
      struct ast * expr;
    } unary;
    struct {
      int op;
      const SYMBOL* sym;
    } component;
    unsigned long long num;
    SYMBOL* label;
    struct {
      BYTE* content;
      size_t len;
    } string;
  } u;
} AST;

AST* new_ast(int kind);
void delete_ast(AST*);

AST* parse_expr(STATE*, IFILE*, LEX*);
int expr_type(STATE*, IFILE*, const AST*);

#define MAX_EXPR_STR (128)

union value {
  long long n;
  const SYMBOL* label;
  struct {
    BYTE content[MAX_EXPR_STR];
    unsigned short len;
  } string;
};

typedef union value VALUE;

int eval(STATE*, IFILE*, const AST*, union value *);

int expr(STATE*, IFILE*, LEX*, union value *);
BOOL make_absolute(int type, union value *);

void error(STATE*, const IFILE*, const char* fmt, ...);
void error2(STATE*, LEX* lex, const char* fmt, ...);

#endif // PARSE_H
