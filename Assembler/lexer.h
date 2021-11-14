// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Lexical analyser.

#ifndef LEXER_H
#define LEXER_H

#include "source.h"
#include "utils.h"

#define MAX_LEX (128)

typedef struct {
  SOURCE* source;
  unsigned line;
  unsigned pos;
  unsigned token_pos;
  char lexeme[MAX_LEX];
  int token;
  struct {
    unsigned long long num;
    int reg;
  } val;
} LEX;

LEX* new_lex(SOURCE*);
void delete_lex(LEX*);

// source
unsigned lex_lineno(LEX*);
const char* lex_text(LEX*);

void lex_begin(LEX*, unsigned line, unsigned pos);
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

#endif // LEXER_H
