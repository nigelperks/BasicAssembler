// Basic Assembler
// Copyright (c) 2022-24 Nigel Perks
// Parsing data definition directives' operands.

#ifndef PARSEDATA_H
#define PARSEDATA_H

#include "parse.h"

// Node in DB data: either single value expression or DUP expression

enum { DB_EXPR, DB_DUP };

struct db_node {
  int type;
  union {
    struct {
      AST* ast;
      int type;
    } expr;
    struct {
      unsigned long long count;
      struct db_node * data;
    } dup;
  } u;
  struct db_node * next;
};

typedef struct db_node DATA_NODE;

DATA_NODE* new_data_node(int type);
void free_db_node(struct db_node *);

DATA_NODE* parse_data_list(STATE* state, IFILE* ifile, LEX* lex, bool valid_type(int type), const char* descrip);

#endif // PARSEDATA_H
