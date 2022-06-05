// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Lexical analyser.

#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>
#include <limits.h>
#include <errno.h>
#include <stdarg.h>
#include "lexer.h"
#include "source.h"
#include "token.h"
#include "utils.h"

static void lex_fatal(LEX*, const char* fmt, ...);

LEX* new_lex(const char* source_name) {
  LEX* lex = emalloc(sizeof *lex);

  lex->source_name = source_name;
  lex->text = NULL;
  lex->lineno = 0;
  lex->pos = 0;
  lex->token_pos = 0;
  lex->token = TOK_NONE;
  lex->lexeme[0] = '\0';

  return lex;
}

void delete_lex(LEX* lex) {
  efree(lex);
}

const char* lex_source_name(LEX* lex) {
  assert(lex != NULL);

  return lex->source_name;
}

unsigned lex_lineno(LEX* lex) {
  assert(lex != NULL);

  return lex->lineno;
}

const char* lex_text(LEX* lex) {
  assert(lex != NULL);

  return lex->text;
}

void lex_begin(LEX* lex, const char* text, unsigned lineno, unsigned pos) {
  assert(lex != NULL);
  assert(text != NULL);
  assert(pos <= strlen(text));

  lex->text = text;
  lex->lineno = lineno;
  lex->pos = pos;
  lex->token = lex_next(lex);
}

unsigned lex_pos(LEX* lex) {
  assert(lex != NULL);

  return lex->pos;
}

unsigned lex_token_pos(LEX* lex) {
  assert(lex != NULL);

  return lex->token_pos;
}

int lex_token(LEX* lex) {
  assert(lex != NULL);

  return lex->token;
}

const char* lex_lexeme(LEX* lex) {
  assert(lex != NULL);

  return lex->lexeme;
}

unsigned long lex_val(LEX* lex) {
  assert(lex != NULL);

  return (unsigned long) lex->val.num;
}

unsigned long long lex_lval(LEX* lex) {
  assert(lex != NULL);

  return lex->val.num;
}

int lex_reg(LEX* lex) {
  assert(lex != NULL);

  return lex->val.reg;
}

void lex_discard_line(LEX* lex) {
  assert(lex != NULL);

  if (lex->text)
    lex->pos = strlen(lex->text);
  lex->token = TOK_EOL;
}

int lex_next(LEX* lex) {
  assert(lex != NULL);
  assert(lex->text != NULL);

  const char* text = lex->text;

  while (text[lex->pos] == ' ' || text[lex->pos] == '\t')
    lex->pos++;

  lex->token_pos = lex->pos;

  int c = text[lex->pos];
  if (c == '\0' || c == '\n' || c == ';')
    return lex->token = TOK_EOL;

  if (isalpha(c) || c == '_' || c == '@') {
    unsigned i = 0;
    lex->lexeme[i++] = c;
    lex->pos++;
    while (isalnum(c = text[lex->pos]) || c == '_' || c == '@') {
      if (i >= MAX_LEX - 1) {
        lex->lexeme[i] = '\0';
        fatal("label too long: %s...\n", lex->lexeme);
      }
      lex->lexeme[i++] = c;
      lex->pos++;
    }
    assert(i < MAX_LEX);
    lex->lexeme[i] = '\0';
    lex->token = register_token(lex->lexeme, &lex->val.reg);
    if (lex->token == TOK_NONE)
      lex->token = identifier_token(lex->lexeme);
    return lex->token;
  }

  if (isdigit(c)) {
    int base = 10;
    unsigned i = 0;
    char* end = NULL;

    lex->lexeme[i++] = c;
    lex->pos++;
    while (isxdigit(c = text[lex->pos])) {
      if (i >= MAX_LEX - 1) {
        lex->lexeme[i] = '\0';
        fatal("number too long: %s...\n", lex->lexeme);
      }
      lex->lexeme[i++] = c;
      lex->pos++;
      if (!isdigit(c))
        base = 16;
    }
    assert(i < MAX_LEX);
    lex->lexeme[i] = '\0';

    if (tolower(c) == 'h') {
      base = 16;
      lex->pos++;
    }
    else {
      if (base == 16)
        fatal("hex number requires H suffix: %s\n", lex->lexeme);
    }

    lex->val.num = strtoull(lex->lexeme, &end, base);
    if (lex->val.num == ULLONG_MAX && errno == ERANGE)
      fatal("number out of range: %s\n", lex->lexeme);
    if (*end != '\0')
      fatal("invalid number: %s\n", lex->lexeme);

    return lex->token = TOK_NUM;
  }

  if (c == '\'' || c == '\"') {
    const int delim = c;
    unsigned i = 0;
    lex->lexeme[i++] = '\'';
    lex->pos++;
    while ((c = text[lex->pos]) != '\0' && c != '\n' && c != delim) {
      if (i >= MAX_LEX - 2) {
        lex->lexeme[i] = '\0';
        fatal("string too long: %s...\n", lex->lexeme);
      }
      lex->lexeme[i++] = c;
      lex->pos++;
    }
    assert(i < MAX_LEX - 1);
    if (c != delim) {
      lex->lexeme[i] = '\0';
      lex_fatal(lex, "unterminated string: %s...\n", lex->lexeme);
    }
    lex->lexeme[i++] = '\'';
    lex->lexeme[i] = '\0';
    lex->pos++;
    return lex->token = TOK_STR;
  }

  if (strchr(":+-*/,()[]?", c)) {
    lex->pos++;
    return lex->token = c;
  }

  lex_fatal(lex, "invalid token prefix: '%c'\n", c);
  return lex->token = TOK_NONE;
}

size_t lex_string_len(LEX* lex) {
  size_t len;

  assert(lex != NULL);
  assert(lex->token == TOK_STR);
  assert(lex->lexeme[0] == '\'');

  len = strlen(lex->lexeme);
  assert(len >= 2);
  assert(lex->lexeme[len-1] == '\'');

  return len - 2;
}

// Return NULL for empty string.
BYTE* lex_string_content(LEX* lex, size_t *len) {
  BYTE* buf = NULL;

  assert(lex != NULL);
  assert(len != NULL);

  *len = lex_string_len(lex);
  if (*len > 0) {
    unsigned i;
    buf = emalloc(*len + 1);
    for (i = 0; i < *len; i++)
      buf[i] = lex->lexeme[1+i];
    buf[i] = '\0';
  }

  return buf;
}

static void lex_fatal(LEX* lex, const char* fmt, ...) {
  assert(lex != NULL);
  assert(fmt != NULL);

  fprintf(stderr, "Fatal: %s: %u: ", lex->source_name ? lex->source_name : "-", lex->lineno);

  va_list ap;
  va_start(ap, fmt); 
  vfprintf(stderr, fmt, ap);
  va_end(ap);

  exit(EXIT_FAILURE);
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_new_lex(CuTest* tc) {
  char name[] = "hello.asm";

  LEX* lex = new_lex(name);
  CuAssertPtrNotNull(tc, lex);
  CuAssertTrue(tc, lex->source_name == name);
  CuAssertIntEquals(tc, 0, lex->lineno);
  CuAssertIntEquals(tc, 0, lex->pos);
  CuAssertIntEquals(tc, TOK_NONE, lex->token);
  delete_lex(lex);

  lex = new_lex(NULL);
  CuAssertPtrNotNull(tc, lex);
  CuAssertTrue(tc, lex->source_name == NULL);
  CuAssertIntEquals(tc, 0, lex->lineno);
  CuAssertIntEquals(tc, 0, lex->pos);
  CuAssertIntEquals(tc, TOK_NONE, lex->token);
  delete_lex(lex);
}

static void test_lex_begin(CuTest* tc) {
  LEX* lex = new_lex(NULL);

  lex->lineno = 3;
  lex->pos = 23;
  lex->token = '!';

  const char text[] = "crumbly walls";
  lex_begin(lex, text, 1, 0);

  CuAssertIntEquals(tc, 1, lex->lineno);
  CuAssertIntEquals(tc, 7, lex->pos);
  CuAssertIntEquals(tc, TOK_LABEL, lex->token);
  CuAssertIntEquals(tc, '\0', lex->lexeme[7]);
  CuAssertStrEquals(tc, "crumbly", lex->lexeme);

  delete_lex(lex);
}

static void test_discard_line(CuTest* tc) {
  static const char text[] = "this is a test string";
  const unsigned LEN = strlen(text);

  LEX* lex = new_lex(NULL);

  lex_begin(lex, text, 1, 0);

  lex_discard_line(lex);
  CuAssertIntEquals(tc, TOK_EOL, lex->token);
  CuAssertIntEquals(tc, LEN, lex->pos);
  CuAssertIntEquals(tc, TOK_EOL, lex_next(lex));
  CuAssertIntEquals(tc, TOK_EOL, lex_next(lex));
  CuAssertIntEquals(tc, TOK_EOL, lex_next(lex));
  CuAssertIntEquals(tc, LEN, lex->pos);

  delete_lex(lex);
}

static void test_get_token(CuTest* tc) {
  static const char text[] =
    "123h123+AB0+0AB0hmov ds'sam smith';comment\n"
    "second line";

  LEX* lex = new_lex(NULL);

  lex_begin(lex, text, 1, 0);

  CuAssertIntEquals(tc, TOK_NUM, lex->token);
  CuAssertIntEquals(tc, TOK_NUM, lex_token(lex));
  CuAssertLongLongEquals(tc, 0x123, lex->val.num);

  CuAssertIntEquals(tc, TOK_NUM, lex_next(lex));
  CuAssertIntEquals(tc, TOK_NUM, lex->token);
  CuAssertLongLongEquals(tc, 123, lex->val.num);

  CuAssertIntEquals(tc, '+', lex_next(lex));
  CuAssertIntEquals(tc, '+', lex->token);

  CuAssertIntEquals(tc, TOK_LABEL, lex_next(lex));
  CuAssertIntEquals(tc, TOK_LABEL, lex->token);
  CuAssertStrEquals(tc, "AB0", lex->lexeme);

  CuAssertIntEquals(tc, '+', lex_next(lex));
  CuAssertIntEquals(tc, '+', lex->token);

  CuAssertIntEquals(tc, TOK_NUM, lex_next(lex));
  CuAssertIntEquals(tc, TOK_NUM, lex->token);
  CuAssertLongLongEquals(tc, 0xAB0, lex->val.num);

  CuAssertIntEquals(tc, TOK_MOV, lex_next(lex));
  CuAssertIntEquals(tc, TOK_MOV, lex->token);
  CuAssertStrEquals(tc, "mov", lex->lexeme);

  CuAssertIntEquals(tc, TOK_SREG, lex_next(lex));
  CuAssertIntEquals(tc, TOK_SREG, lex->token);
  CuAssertIntEquals(tc, SR_DS, lex->val.reg);

  CuAssertIntEquals(tc, TOK_STR, lex_next(lex));
  CuAssertIntEquals(tc, TOK_STR, lex->token);
  CuAssertStrEquals(tc, "'sam smith'", lex->lexeme);

  CuAssertIntEquals(tc, TOK_EOL, lex_next(lex));
  CuAssertIntEquals(tc, TOK_EOL, lex->token);

  CuAssertIntEquals(tc, TOK_EOL, lex_next(lex));
  CuAssertIntEquals(tc, TOK_EOL, lex->token);

  delete_lex(lex);
}

static void test_string(CuTest* tc) {
  LEX lex;
  const char* STRING = "hello\ngoodbye\n\\n";
  const size_t LEN = strlen(STRING);
  BYTE* buf = NULL;
  size_t len = 0;

  sprintf(lex.lexeme, "'%s'", STRING);
  lex.token = TOK_STR;

  CuAssertIntEquals(tc, LEN, lex_string_len(&lex));

  buf = lex_string_content(&lex, &len);
  CuAssertPtrNotNull(tc, buf);
  CuAssertStrEquals(tc, STRING, buf);
  CuAssertIntEquals(tc, LEN, len);
  efree(buf);
}

CuSuite* lexer_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_lex);
  SUITE_ADD_TEST(suite, test_lex_begin);
  SUITE_ADD_TEST(suite, test_discard_line);
  SUITE_ADD_TEST(suite, test_get_token);
  SUITE_ADD_TEST(suite, test_string);
  return suite;
}

#endif // UNIT_TEST
