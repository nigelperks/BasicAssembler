// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Lexical analyser.

#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>
#include <limits.h>
#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include "lexer.h"
#include "source.h"
#include "token.h"
#include "utils.h"

#define MAX_TEXT (4096)  // arbitrary, to avoid 64-bit size_t lengths

static void lex_fatal(LEX*, const char* fmt, ...);
static void lex_error(LEX*, const char* fmt, ...);

LEX* new_lex(const char* source_name) {
  LEX* lex = emalloc(sizeof *lex);

  lex->source_name = source_name;
  lex->text = NULL;
  lex->lineno = 0;
  lex->pos = 0;
  lex->token_pos = 0;
  lex->token = TOK_NONE;
  lex->lexeme[0] = '\0';
  lex->errors = 0;

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

  if (strlen(text) > MAX_TEXT) {
    fprintf(stderr, "Fatal: %s: %u: line too long\n", lex->source_name ? lex->source_name : "-", lineno);
    exit(EXIT_FAILURE);
  }

  lex->text = text;
  lex->lineno = lineno;
  lex->pos = pos;
  lex->token = lex_next(lex);
  lex->errors = 0;
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
  assert(lex->token == TOK_LABEL);

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
    lex->pos = (unsigned) strlen(lex->text);
  lex->token = TOK_EOL;
}

static void read_number(LEX*);
static void convert(LEX*, unsigned pos, int base);

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
        lex_fatal(lex, "label too long: %s...\n", lex->lexeme);
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

  if (c == '$') {
    strcpy(lex->lexeme, "$");
    lex->pos++;
    return lex->token = TOK_LABEL;
  }

  if (c == '0') {
    lex->pos++;
    lex->lexeme[0] = '0';
    lex->i = 1;
    switch (tolower(c = text[lex->pos])) {
      case 'b':
        read_number(lex);  // including 'b'
        if (tolower(text[lex->pos]) == 'h') {
          lex->pos++;
          convert(lex, 0, 16);
        }
        else
          convert(lex, 2, 2);  // disregard 0b prefix
        break;
      case 'o':
        lex->lexeme[lex->i++] = 'o';
        lex->pos++;
        read_number(lex);
        convert(lex, 2, 8);
        break;
      case 'x':
        lex->lexeme[lex->i++] = 'x';
        lex->pos++;
        read_number(lex);
        convert(lex, 2, 16);
        break;
      default:
        read_number(lex);
        if (tolower(text[lex->pos]) == 'h') {
          lex->pos++;
          convert(lex, 0, 16);
        }
        else
          convert(lex, 0, 10);
        break;
    }
    return lex->token = TOK_NUM;
  }

  if (isdigit(c)) {
    lex->i = 0;
    read_number(lex);
    if (tolower(text[lex->pos]) == 'h') {
      lex->pos++;
      convert(lex, 0, 16);
    }
    else
      convert(lex, 0, 10);
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
        lex_fatal(lex, "string too long: %s...\n", lex->lexeme);
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
    return lex->token = TOK_STRING;
  }

  if (strchr(":+-*/,()[]?=", c)) {
    lex->pos++;
    return lex->token = c;
  }

  lex_fatal(lex, "invalid token prefix: '%c'\n", c);
  return lex->token = TOK_NONE;
}

static void append_lexeme(LEX* lex, int c, const char* what) {
  if (lex->i >= MAX_LEX - 1) {
    lex->lexeme[lex->i] = '\0';
    lex_fatal(lex, "%s too long: %s...\n", what, lex->lexeme);
  }
  lex->lexeme[lex->i++] = c;
}

// Read a number of zero or more hex digits into lexeme.
// Invalid digits, and the lack of any digits, are caught at conversion.
// Allow arbitrary underscore punctuation for readability.
// On entry: lex->i initialised by caller.
// On exit: pos -> first non-hex-digit.
static void read_number(LEX* lex) {
  int c;

  while (isxdigit(c = lex->text[lex->pos])) {
    append_lexeme(lex, c, "number");
    do {
      lex->pos++;
    } while (lex->text[lex->pos] == '_');
  }

  assert(lex->i < MAX_LEX);
  lex->lexeme[lex->i] = '\0';
}

// Convert number at pos in lexeme according to base, setting lex->val.num.
// Errors are fatal.
static void convert(LEX* lex, unsigned pos, int base) {
  char* end = NULL;
  lex->val.num = strtoull(lex->lexeme + pos, &end, base);
  if (lex->val.num == ULLONG_MAX && errno == ERANGE) {
    lex_error(lex, "number out of range: %s", lex->lexeme);
    lex->val.num = 0;
  }
  if (*end != '\0' || end == lex->lexeme + pos) {
    lex_error(lex, "invalid number: %s", lex->lexeme);
    lex->val.num = 0;
  }
}

size_t lex_string_len(LEX* lex) {
  size_t len;

  assert(lex != NULL);
  assert(lex->token == TOK_STRING);
  assert(lex->lexeme[0] == '\'');

  len = strlen(lex->lexeme);
  assert(len >= 2);
  assert(lex->lexeme[len-1] == '\'');

  return len - 2;
}

// Return newly allocated, null-terminated memory to be freed by caller,
// or NULL for empty string.
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

static void lex_error(LEX* lex, const char* fmt, ...) {
  assert(lex != NULL);
  assert(fmt != NULL);

  lex->errors++;

  fprintf(stderr, "Error: %s: %u: ", lex->source_name ? lex->source_name : "-", lex->lineno);

  va_list ap;
  va_start(ap, fmt);
  vfprintf(stderr, fmt, ap);
  va_end(ap);

  if (lex->text) {
    fputs(":\n", stderr);

    const unsigned TAB = 4;

    print_notabs(stderr, lex->text, TAB);
    fputc('\n', stderr);
    position(stderr, lex->text, lex->token_pos, TAB);
    fputs("^\n", stderr);
  }
  else
    fputc('\n', stderr);
}

unsigned lex_errors(const LEX* lex) {
  return lex->errors;
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
  const unsigned LEN = (unsigned) strlen(text);

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

  CuAssertIntEquals(tc, TOK_STRING, lex_next(lex));
  CuAssertIntEquals(tc, TOK_STRING, lex->token);
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
  lex.token = TOK_STRING;

  CuAssertSizeEquals(tc, LEN, lex_string_len(&lex));

  buf = lex_string_content(&lex, &len);
  CuAssertPtrNotNull(tc, buf);
  CuAssertStrEquals(tc, STRING, buf);
  CuAssertSizeEquals(tc, LEN, len);
  efree(buf);
}

static void test_error(CuTest* tc) {
  // Null source name
  LEX* lex = new_lex(NULL);
  CuAssertIntEquals(tc, 0, lex->errors);
  // No source line
  lex_error(lex, "dummy error");
  CuAssertIntEquals(tc, 1, lex->errors);
  // Begin source line
  lex_begin(lex, "some code", 1, 5);
  CuAssertIntEquals(tc, 0, lex->errors);
  lex_error(lex, "code error: %d", 53);
  CuAssertIntEquals(tc, 1, lex->errors);
  delete_lex(lex);

  // With source name
  lex = new_lex("hello.asm");
  // No source line
  lex_error(lex, "dummy error");
  // Begin source line
  lex_begin(lex, "some code", 1, 0);
  lex_error(lex, "first error");
  CuAssertIntEquals(tc, 1, lex->errors);
  lex->token_pos = 5;
  lex_error(lex, "code error: %d", 53);
  CuAssertIntEquals(tc, 2, lex->errors);
  CuAssertIntEquals(tc, 2, lex_errors(lex));
  delete_lex(lex);
}

static void test_append_lexeme(CuTest* tc) {
  LEX lex;

  lex.i = 0;

  append_lexeme(&lex, '*', "test");
  CuAssertIntEquals(tc, '*', lex.lexeme[0]);
  CuAssertIntEquals(tc, 1, lex.i);

  append_lexeme(&lex, '!', "test");
  CuAssertIntEquals(tc, '*', lex.lexeme[0]);
  CuAssertIntEquals(tc, '!', lex.lexeme[1]);
  CuAssertIntEquals(tc, 2, lex.i);
}

static void test_read_number(CuTest* tc) {
  LEX lex;

  lex.text = "...0xFACE123H";

  lex.pos = 0;
  lex.i = 0;
  read_number(&lex);
  CuAssertStrEquals(tc, "", lex.lexeme);
  CuAssertIntEquals(tc, 0, lex.pos);

  lex.pos = 3;
  lex.i = 0;
  read_number(&lex);
  CuAssertStrEquals(tc, "0", lex.lexeme);
  CuAssertIntEquals(tc, 4, lex.pos);

  lex.pos = 5;
  lex.i = 0;
  read_number(&lex);
  CuAssertStrEquals(tc, "FACE123", lex.lexeme);
  CuAssertIntEquals(tc, 'H', lex.text[lex.pos]);
}

static void test_convert(CuTest* tc) {
  LEX* lex = new_lex(NULL);

  lex->text = "0o128,0x1_0000_0000_0000_0000";
  lex->lineno = 2;
  lex->pos = 0;

  strcpy(lex->lexeme, "");
  lex->token_pos = (unsigned) strlen(lex->text);
  convert(lex, 0, 10);
  CuAssertIntEquals(tc, 1, lex->errors);

  strcpy(lex->lexeme, "0o128");
  lex->token_pos = 0;
  convert(lex, 2, 10);
  CuAssertIntEquals(tc, 1, lex->errors);
  CuAssertLongLongEquals(tc, 128, lex->val.num);

  convert(lex, 2, 8);
  CuAssertIntEquals(tc, 2, lex->errors);
  CuAssertLongLongEquals(tc, 0, lex->val.num);

  const char* p = strchr(lex->text, ',');
  unsigned i = 0;
  for (p++; *p && *p != ','; p++) {
    if (*p != '_')
      lex->lexeme[i++] = *p;
  }
  lex->lexeme[i] = '\0';
  lex->token_pos = (unsigned) (p+1 - lex->text);
  convert(lex, 2, 16);
  CuAssertIntEquals(tc, 3, lex->errors);
  CuAssertLongLongEquals(tc, 0, lex->val.num);

  delete_lex(lex);
}

CuSuite* lexer_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_lex);
  SUITE_ADD_TEST(suite, test_lex_begin);
  SUITE_ADD_TEST(suite, test_discard_line);
  SUITE_ADD_TEST(suite, test_get_token);
  SUITE_ADD_TEST(suite, test_string);
  SUITE_ADD_TEST(suite, test_error);
  SUITE_ADD_TEST(suite, test_append_lexeme);
  SUITE_ADD_TEST(suite, test_read_number);
  SUITE_ADD_TEST(suite, test_convert);
  return suite;
}

#endif // UNIT_TEST
