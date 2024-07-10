// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
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

static unsigned long malloc_count;
static unsigned long free_count;

void get_memory_counts(unsigned long *mcount, unsigned long *fcount) {
  *mcount = malloc_count;
  *fcount = free_count;
}

void* emalloc(size_t sz) {
  void* p = malloc(sz);
  if (p == NULL)
    fatal("out of memory (emalloc)\n");
  malloc_count++;
  return p;
}

void efree(void* p) {
  if (p) {
    free(p);
    free_count++;
  }
}

void* erealloc(void* p, size_t sz) {
  if (p)
    free_count++;
  p = realloc(p, sz);
  if (p == NULL)
    fatal("out of memory (erealloc)\n");
  malloc_count++;
  return p;
}

void* ecalloc(size_t size) {
  void* p = calloc(1, size);
  if (p == NULL)
    fatal("out of memory (ecalloc)\n");
  malloc_count++;
  return p;
}

char* estrdup(const char* s) {
  char* t = NULL;
  if (s) {
    if (s[0]) {
      t = emalloc(strlen(s) + 1);
      strcpy(t, s);
    }
    else {
      t = emalloc(1);
      t[0] = '\0';
    }
  }
  return t;
}

FILE* efopen(const char* filename, const char* mode, const char* action) {
  FILE* fp = NULL;

  assert(filename != NULL);
  assert(mode != NULL);
  assert(action != NULL);

  fp = fopen(filename, mode);
  if (fp == NULL)
    fatal("cannot open %s for %s\n", filename, action);

  return fp;
}

BYTE* read_file(FILE* fp, FileSize size) {
  BYTE* buf = emalloc(size);
  size_t count = fread(buf, 1, size, fp);
  if (count != size)
    fatal("file out of data: reading %lu bytes, got %lu bytes\n", size, count);
  return buf;
}

FileSize file_size(FILE* fp, const char* name) {
  long pos = ftell(fp);
  fseek(fp, 0, SEEK_END);
  long size = ftell(fp);
  if (size < 0)
    fatal("cannot determine file size: %s\n", name);
  fseek(fp, pos, SEEK_SET);
  return size;
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
  VECTOR* vec = ecalloc(sizeof *vec + size * sizeof (vec->val[0]));
  vec->size = size;
  return vec;
}

void delete_vector(VECTOR* vec) {
  efree(vec);
}

// Round up n so it has the given alignment, for p2 < 32.
unsigned long p2aligned(unsigned long n, unsigned p2) {
  return n + p2gap(n, p2);
}

unsigned long p2gap(unsigned long n, unsigned p2) {
  unsigned long align = 1 << p2;
  unsigned long mask = align - 1;
  unsigned long mod = n & mask;
  return (mod == 0) ? 0 : align - mod;
}

#ifdef UNIT_TEST

#include "CuTest.h"

bool zero(const BYTE* p, size_t len) {
  while (len--)
    if (*p++ != 0)
      return false;
  return true;
}

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
  efree(t);

  t = estrdup("giblets");
  CuAssertPtrNotNull(tc, t);
  CuAssertStrEquals(tc, "giblets", t);
  efree(t);
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

static void test_p2aligned(CuTest* tc) {
  CuAssertLongLongEquals(tc, 0, p2aligned(0, 0));
  CuAssertLongLongEquals(tc, 0, p2aligned(0, 31));

  CuAssertLongLongEquals(tc, 1, p2aligned(1, 0));
  CuAssertLongLongEquals(tc, 2, p2aligned(1, 1));
  CuAssertLongLongEquals(tc, 4, p2aligned(1, 2));
  CuAssertLongLongEquals(tc, 1UL << 31, p2aligned(1, 31));

  CuAssertLongLongEquals(tc, 2, p2aligned(2, 0));
  CuAssertLongLongEquals(tc, 2, p2aligned(2, 1));
  CuAssertLongLongEquals(tc, 4, p2aligned(2, 2));
  CuAssertLongLongEquals(tc, 8, p2aligned(2, 3));

  CuAssertLongLongEquals(tc, 1025, p2aligned(1025, 0));
  CuAssertLongLongEquals(tc, 1026, p2aligned(1025, 1));
  CuAssertLongLongEquals(tc, 1028, p2aligned(1025, 2));
  CuAssertLongLongEquals(tc, 2048, p2aligned(1025, 10));
}

CuSuite* utils_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_sizes);
  SUITE_ADD_TEST(suite, test_estrdup);
  SUITE_ADD_TEST(suite, test_endian);
  SUITE_ADD_TEST(suite, test_p2aligned);
  return suite;
}

#endif // UNIT_TEST
