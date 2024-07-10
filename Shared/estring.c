// Basic Assembler
// Copyright (c) 2022-24 Nigel Perks
// Extendable string in C.

#include <string.h>
#include <assert.h>
#include "estring.h"
#include "utils.h"

void init_estring(ESTRING* e, size_t first_alloc) {
  assert(e != NULL);
  e->s = NULL;
  e->allocated = 0;
  e->used = 0;
  e->first_alloc = first_alloc;
}

void deinit_estring(ESTRING* e) {
  assert(e != NULL);
  efree(e->s);
  e->s = NULL;
  e->allocated = 0;
  e->used = 0;
}

const char* estring_text(const ESTRING* e) {
  assert(e != NULL);
  return e->s;
}

void extend_string(ESTRING* e, const char* s) {
  assert(e != NULL);
  assert(e->used <= e->allocated);
  assert(s != NULL);
  const size_t req = e->used ? e->used + strlen(s) : strlen(s) + 1; // if some already used, it includes null terminator
  if (req > e->allocated) {
    do {
      e->allocated = e->allocated ? 2 * e->allocated : e->first_alloc;
    } while (req > e->allocated);
    e->s = erealloc(e->s, e->allocated);
  }
  if (e->used)
    strcpy(e->s + e->used - 1, s);
  else
    strcpy(e->s, s);
  e->used = req;
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_init(CuTest* tc) {
  ESTRING e;

  memset(&e, 0xff, sizeof e);

  init_estring(&e, 16);
  CuAssertPtrEquals(tc, NULL, e.s);
  CuAssertSizeEquals(tc, 0, e.allocated);
  CuAssertSizeEquals(tc, 0, e.used);
  CuAssertSizeEquals(tc, 16, e.first_alloc);
}

static void test_deinit(CuTest* tc) {
  ESTRING e;

  init_estring(&e, 32);
  deinit_estring(&e);
  CuAssertPtrEquals(tc, NULL, e.s);
  CuAssertSizeEquals(tc, 0, e.allocated);
  CuAssertSizeEquals(tc, 0, e.used);
  CuAssertSizeEquals(tc, 32, e.first_alloc);

  e.s = estrdup("some sample text");
  e.allocated = 32;
  e.used = 17;
  deinit_estring(&e);
  CuAssertPtrEquals(tc, NULL, e.s);
  CuAssertSizeEquals(tc, 0, e.allocated);
  CuAssertSizeEquals(tc, 0, e.used);
  CuAssertSizeEquals(tc, 32, e.first_alloc);
}

static void test_extend(CuTest* tc) {
  ESTRING e;

  init_estring(&e, 8);

  extend_string(&e, "");
  CuAssertSizeEquals(tc, 8, e.allocated);
  CuAssertSizeEquals(tc, 1, e.used);

  extend_string(&e, "a");
  CuAssertSizeEquals(tc, 8, e.allocated);
  CuAssertSizeEquals(tc, 2, e.used);
  CuAssertStrEquals(tc, "a", e.s);

  extend_string(&e, "123456");
  CuAssertSizeEquals(tc, 8, e.allocated);
  CuAssertSizeEquals(tc, 8, e.used);
  CuAssertStrEquals(tc, "a123456", e.s);

  extend_string(&e, "-hello!");
  CuAssertSizeEquals(tc, 16, e.allocated);
  CuAssertSizeEquals(tc, 15, e.used);
  CuAssertStrEquals(tc, "a123456-hello!", e.s);

  extend_string(&e, "");
  CuAssertSizeEquals(tc, 16, e.allocated);
  CuAssertSizeEquals(tc, 15, e.used);
  CuAssertStrEquals(tc, "a123456-hello!", e.s);

  extend_string(&e, "!!");
  CuAssertSizeEquals(tc, 32, e.allocated);
  CuAssertSizeEquals(tc, 17, e.used);
  CuAssertStrEquals(tc, "a123456-hello!!!", e.s);

  deinit_estring(&e);
}

CuSuite* estring_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_init);
  SUITE_ADD_TEST(suite, test_deinit);
  SUITE_ADD_TEST(suite, test_extend);
  return suite;
}

#endif // UNIT_TEST
