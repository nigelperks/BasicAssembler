// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Lexical analyser.

#ifndef LEXER_H
#define LEXER_H

#include "source.h"
#include "utils.h"

#define MAX_LEX (128)

typedef struct {
  const char* source_name;
  const char* text;
  unsigned lineno;
  unsigned pos;
  unsigned token_pos;
  char lexeme[MAX_LEX];
  unsigned i;  // lexeme index to write
  int token;
  struct {
    unsigned long long num;
    int reg;
  } val;
  unsigned errors;
} LEX;

LEX* new_lex(const char* source_name);
void delete_lex(LEX*);

// source
const char* lex_source_name(LEX*);
unsigned lex_lineno(LEX*);
const char* lex_text(LEX*);

void lex_begin(LEX*, const char* text, unsigned lineno, unsigned pos);
int lex_token(LEX*);
int lex_next(LEX*);
unsigned lex_pos(LEX*);
unsigned lex_token_pos(LEX*);
const char* lex_lexeme(LEX*);
void lex_discard_line(LEX*);
unsigned long lex_val(LEX*);
unsigned long long lex_lval(LEX*);
int lex_reg(LEX*);
size_t lex_string_len(LEX*);
BYTE* lex_string_content(LEX*, size_t *len);

unsigned lex_errors(const LEX*);

#endif // LEXER_H
