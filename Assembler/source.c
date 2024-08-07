// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Source file loading.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "source.h"
#include "utils.h"

SOURCE* new_source(const char* name) {
  SOURCE* src = NULL;

  src = emalloc(sizeof *src);
  src->name = estrdup(name);
  src->lines = NULL;
  src->allocated = 0;
  src->used = 0;

  return src;
}

static unsigned append(SOURCE*, unsigned lineno, const char* line, size_t len);

SOURCE* load_source_file(const char* filename) {
  SOURCE* src = NULL;
  FILE* fp = NULL;
  unsigned lineno = 0;
  char buf[1024];

  src = new_source(filename);

  fp = efopen(filename, "r", "reading");

  while (fgets(buf, sizeof buf, fp)) {
    const size_t len = strlen(buf);
    lineno++;
    if (len == 0 || buf[len-1] != '\n')
      fatal("line %u is missing or incomplete\n", lineno);
    append(src, lineno, buf, len-1);
  }

  fclose(fp);

  return src;
}

static size_t line_length(const char*);

SOURCE* load_source_mem(const char* mem) {
  SOURCE* src = NULL;
  unsigned lineno = 0;

  src = new_source("memory");

  while (*mem) {
    const size_t len = line_length(mem);
    lineno++;
    append(src, lineno, mem, len);
    if (mem[len] == '\0')
      break;
    mem += len;
    mem++;
  }

  return src;
}

void delete_source(SOURCE* src) {
  if (src) {
    efree(src->name);
    for (size_t i = 0; i < src->used; i++)
      efree(src->lines[i].text);
    efree(src->lines);
    efree(src);
  }
}

const char* source_name(SOURCE* src) {
  return src->name;
}

unsigned source_lines(SOURCE* src) {
  assert(src != NULL);

  return src->used;
}

const char* source_text(SOURCE* src, unsigned index) {
  assert(src != NULL);
  assert(index < src->used);

  return src->lines[index].text;
}

unsigned source_lineno(SOURCE* src, unsigned index) {
  assert(src != NULL);
  assert(index < src->used);

  return src->lines[index].lineno;
}

unsigned append_source_line(SOURCE* src, unsigned lineno, const char* line) {
  assert(line != NULL);
  return append(src, lineno, line, strlen(line));
}

static char* copy(const char*, size_t len);

static unsigned append(SOURCE* src, unsigned lineno, const char* line, size_t len) {
  assert(src->used <= src->allocated);
  if (src->used == src->allocated) {
    unsigned new_allocated = src->allocated ? src->allocated * 2 : 128;
    if (new_allocated < src->allocated)
      fatal("too many source lines\n");
    src->allocated = new_allocated;
    src->lines = erealloc(src->lines, (sizeof src->lines[0]) * src->allocated);
  }
  assert(src->used < src->allocated);
  src->lines[src->used].lineno = lineno;
  src->lines[src->used].text = copy(line, len);
  return src->used++;
}

static char* copy(const char* line, size_t len) {
  char* t = emalloc(len + 1);
  if (len)
    memcpy(t, line, len);
  t[len] = '\0';
  return t;
}

static size_t line_length(const char* s) {
  size_t len = 0;

  assert(s != NULL);

  while (*s != '\0' && *s != '\n')
    len++, s++;

  return len;
}

void print_source(const SOURCE* src) {
  const struct source_line * p = NULL;
  unsigned i;

  assert(src != NULL);

  for (i = 0, p = src->lines; i < src->used; i++, p++)
    printf("%s: %u: %s\n", src->name, p->lineno, p->text);
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_line_length(CuTest* tc) {
  CuAssertSizeEquals(tc, 0, line_length(""));
  CuAssertSizeEquals(tc, 0, line_length("\n"));
  CuAssertSizeEquals(tc, 0, line_length("\nfred\n"));
  CuAssertSizeEquals(tc, 1, line_length("\r\nfred\n"));
  CuAssertSizeEquals(tc, 4, line_length("fred\n"));
  CuAssertSizeEquals(tc, 4, line_length("fred"));
}

static void test_copy(CuTest* tc) {
  char* t;

  t = copy(NULL, 0);
  CuAssertPtrNotNull(tc, t);
  CuAssertIntEquals(tc, '\0', t[0]);
  efree(t);

  t = copy("", 0);
  CuAssertPtrNotNull(tc, t);
  CuAssertIntEquals(tc, '\0', t[0]);
  efree(t);

  t = copy("hello", 3);
  CuAssertPtrNotNull(tc, t);
  CuAssertStrEquals(tc, "hel", t);
  efree(t);

  t = copy("hello", 5);
  CuAssertPtrNotNull(tc, t);
  CuAssertStrEquals(tc, "hello", t);
  efree(t);

  t = copy("hello", 6);
  CuAssertPtrNotNull(tc, t);
  CuAssertStrEquals(tc, "hello", t);
  efree(t);
}

static void test_new_source(CuTest* tc) {
  SOURCE* src;

  src = new_source("lovely");
  CuAssertPtrNotNull(tc, src);
  CuAssertStrEquals(tc, "lovely", src->name);
  CuAssertPtrEquals(tc, NULL, src->lines);
  CuAssertSizeEquals(tc, 0, src->allocated);
  CuAssertSizeEquals(tc, 0, src->used);

  delete_source(src);
}

static void test_append(CuTest* tc) {
  SOURCE* src = new_source(NULL);
  unsigned i;

  i = append(src, 1, "", 0);
  CuAssertIntEquals(tc, 0, i);
  CuAssertPtrNotNull(tc, src->lines);
  CuAssertSizeEquals(tc, 128, src->allocated);
  CuAssertSizeEquals(tc, 1, src->used);
  CuAssertPtrNotNull(tc, src->lines[0].text);
  CuAssertIntEquals(tc, 1, src->lines[0].lineno);
  CuAssertStrEquals(tc, "", src->lines[0].text);

  i = append(src, 3, "jam sandwich\n", 12);
  CuAssertIntEquals(tc, 1, i);
  CuAssertPtrNotNull(tc, src->lines);
  CuAssertSizeEquals(tc, 128, src->allocated);
  CuAssertSizeEquals(tc, 2, src->used);
  CuAssertPtrNotNull(tc, src->lines[1].text);
  CuAssertIntEquals(tc, 3, src->lines[1].lineno);
  CuAssertStrEquals(tc, "jam sandwich", src->lines[1].text);

  delete_source(src);
}

static void test_load_source_mem(CuTest* tc) {
  SOURCE* src;

  const char text[] =
    "once upon a time\n"
    "there was a little pig\n"
    "who was a nuclear scientist.";

  src = load_source_mem(text);
  CuAssertPtrNotNull(tc, src);
  CuAssertSizeEquals(tc, 3, src->used);
  CuAssertSizeEquals(tc, 128, src->allocated);
  CuAssertStrEquals(tc, "once upon a time", src->lines[0].text);
  CuAssertIntEquals(tc, 1, src->lines[0].lineno);
  CuAssertStrEquals(tc, "there was a little pig", src->lines[1].text);
  CuAssertIntEquals(tc, 2, src->lines[1].lineno);
  CuAssertStrEquals(tc, "who was a nuclear scientist.", src->lines[2].text);
  CuAssertIntEquals(tc, 3, src->lines[2].lineno);

  delete_source(src);
}

CuSuite* source_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_line_length);
  SUITE_ADD_TEST(suite, test_copy);
  SUITE_ADD_TEST(suite, test_new_source);
  SUITE_ADD_TEST(suite, test_append);
  SUITE_ADD_TEST(suite, test_load_source_mem);
  return suite;
}

#endif // UNIT_TEST
