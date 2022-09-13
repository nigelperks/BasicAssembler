// Basic Assembler
// Copyright (c) 2022 Nigel Perks
// Parsing data definition directives' operands.

#include <stddef.h>
#include <assert.h>
#include "parsedata.h"
#include "parse.h"

// data-list:
//      datum [ ',' datum ... ]
//
// datum:
//      expr
//      expr DUP dup-data
//
// dup-data:
//      '(' data-list ')'

DATA_NODE* new_data_node(int type) {
  struct db_node * p = emalloc(sizeof *p);
  p->type = type;
  p->next = NULL;
  return p;
}

void free_db_node(struct db_node * node) {
  while (node != NULL) {
    struct db_node * next = node->next;

    switch (node->type) {
      case DB_EXPR:
        delete_ast(node->u.expr.ast);
        break;
      case DB_DUP:
        free_db_node(node->u.dup.data);
        break;
    }

    efree(node);
    node = next;
  }
}

static DATA_NODE* parse_datum(STATE* state, IFILE* ifile, LEX* lex, bool valid_type(int type), const char* descrip);

DATA_NODE* parse_data_list(STATE* state, IFILE* ifile, LEX* lex, bool valid_type(int), const char* descrip) {
  DATA_NODE* const first = parse_datum(state, ifile, lex, valid_type, descrip);

  for (DATA_NODE* node = first; node && lex_token(lex) == ','; node = node->next) {
    lex_next(lex);
    node->next = parse_datum(state, ifile, lex, valid_type, descrip);
  }

  return first;
}

static struct db_node * parse_dup(STATE*, IFILE*, LEX*, bool valid_type(int), const char* descrip, unsigned long long count);

static DATA_NODE* parse_datum(STATE* state, IFILE* ifile, LEX* lex, bool valid_type(int), const char* descrip) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(state->curseg != NO_SEG);

  AST* ast = parse_expr(state, ifile, lex);
  if (ast == NULL)
    return NULL; // error already issued

  int type = expr_type(state, ifile, ast);
  if (type == ET_ERR) {
    delete_ast(ast);
    return NULL; // error already issued
  }

  if (lex_token(lex) == TOK_DUP) {
    if (type == ET_ABS || type == ET_REL_DIFF) {
      VALUE count;
      if (eval(state, ifile, ast, &count) == type)
        return parse_dup(state, ifile, lex, valid_type, descrip, count.n);
    }
    error2(state, lex, "invalid DUP expression");
    delete_ast(ast);
    return NULL;
  }

  if (valid_type(type)) {
    struct db_node * node = new_data_node(DB_EXPR);
    node->u.expr.ast = ast;
    node->u.expr.type = type;
    return node;
  }

  error2(state, lex, "invalid expression for %s data", descrip);
  return NULL;
}

static struct db_node * parse_dup(STATE* state, IFILE* ifile, LEX* lex, bool valid_type(int), const char* descrip, unsigned long long count) {
  assert(lex_token(lex) == TOK_DUP);

  if (lex_next(lex) != '(') {
    error2(state, lex, "parentheses required");
    lex_discard_line(lex);
    return NULL;
  }

  struct db_node * node = new_data_node(DB_DUP);
  node->u.dup.count = count;

  lex_next(lex);
  node->u.dup.data = parse_data_list(state, ifile, lex, valid_type, descrip);

  if (lex_token(lex) == ')')
    lex_next(lex);
  else
    error2(state, lex, "closing parenthesis expected");

  return node;
}
