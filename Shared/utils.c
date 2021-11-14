// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Utility types and functions.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <assert.h>
#include "utils.h"

const char* progname;

void fatal(const char* fmt, ...) {
  fflush(stdout);
  va_list ap;
  if (progname)
    fprintf(stderr, "%s: ", progname);
  fprintf(stderr, "fatal: ");
  va_start(ap, fmt);
  vfprintf(stderr, fmt, ap);
  va_end(ap);
  exit(EXIT_FAILURE);
}

void* emalloc(size_t sz) {
  void* p = malloc(sz);
  if (p == NULL)
    fatal("out of memory (emalloc)\n");
  return p;
}

void* erealloc(void* p, size_t sz) {
  p = realloc(p, sz);
  if (p == NULL)
    fatal("out of memory (erealloc)\n");
  return p;
}

void* ecalloc(size_t count, size_t size) {
  void* p = calloc(count, size);
  if (p == NULL)
    fatal("out of memory (ecalloc)\n");
  return p;
}

char* estrdup(const char* s) {
  char* t = NULL;
  if (s) {
    if (s[0]) {
      t = malloc(strlen(s) + 1);
      if (t == NULL)
        fatal("out of memory (estrdup)\n");
      strcpy(t, s);
    }
    else {
      t = emalloc(1);
      t[0] = '\0';
    }
  }
  return t;
}

FILE* efopen(const char* filename, const char* mode, const char* descrip) {
  FILE* fp = NULL;

  assert(filename != NULL);
  assert(mode != NULL);
  assert(descrip != NULL);

  fp = fopen(filename, mode);
  if (fp == NULL)
    fatal("cannot open %s for %s\n", filename, descrip);

  return fp;
}

void position(FILE* fp, const char* s, unsigned n, unsigned tab_size) {
  assert(fp != NULL);
  assert(s != NULL);

  unsigned count = 0;
  for ( ; n && *s; n--, s++) {
    if (*s == '\t') {
      unsigned spaces = tab_size - count % tab_size;
      count += spaces;
      while (spaces--)
        putc(' ', fp);
    }
    else if (*s == '\n') {
      putc('\n', fp);
      count = 0;
    }
    else {
      putc(' ', fp);
      count++;
    }
  }
}

void print_notabs(FILE* fp, const char* s, unsigned tab_size) {
  unsigned count = 0;
  for ( ; *s; s++) {
    if (*s == '\t') {
      unsigned spaces = tab_size - count % tab_size;
      count += spaces;
      while (spaces--)
        putc(' ', fp);
    }
    else if (*s == '\n') {
      putc('\n', fp);
      count = 0;
    }
    else {
      putc(*s, fp);
      count++;
    }
  }
}

WORD read_word_le(void* p) {
  const BYTE* a = p;
  return (a[1] << 8) | a[0];
}

void write_word_le(void* p, WORD w) {
  BYTE* a = p;
  a[0] = w & 0xff;
  a[1] = (w >> 8) & 0xff;
}

VECTOR* new_vector(unsigned size) {
  VECTOR* vec = ecalloc(1, sizeof *vec + size * sizeof (vec->val[0]));
  vec->size = size;
  return vec;
}

void delete_vector(VECTOR* vec) {
  free(vec);
}


#ifdef UNIT_TEST

#include "CuTest.h"

static void test_sizes(CuTest* tc) {
  CuAssertIntEquals(tc, 1, sizeof(BYTE));
  CuAssertIntEquals(tc, 2, sizeof(WORD));
  CuAssertIntEquals(tc, 4, sizeof(DWORD));
}

static void test_estrdup(CuTest* tc) {
  char* t;

  t = estrdup(NULL);
  CuAssertPtrEquals(tc, NULL, t);

  t = estrdup("");
  CuAssertPtrNotNull(tc, t);
  CuAssertIntEquals(tc, '\0', t[0]);

  t = estrdup("giblets");
  CuAssertPtrNotNull(tc, t);
  CuAssertStrEquals(tc, "giblets", t);
}

static void test_endian(CuTest* tc) {
  BYTE buf[8];
  const WORD LO = 35;
  const WORD HI = 89;
  const WORD VAL = (HI << 8) | LO;

  memset(buf, 0, sizeof buf);
  CuAssertIntEquals(tc, 0, read_word_le(buf + 4));
  write_word_le(buf + 4, VAL);
  CuAssertIntEquals(tc, LO, buf[4]);
  CuAssertIntEquals(tc, HI, buf[5]);
  CuAssertIntEquals(tc, VAL, read_word_le(buf + 4));  
} 

CuSuite* utils_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_sizes);
  SUITE_ADD_TEST(suite, test_estrdup);
  SUITE_ADD_TEST(suite, test_endian);
  return suite;
}

#endif // UNIT_TEST
