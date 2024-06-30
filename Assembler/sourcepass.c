// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Pass over source, creating intermediate file.

#include <assert.h>
#include "sourcepass.h"
#include "utils.h"

static BOOL blank(const char* s) {
  assert(s != NULL);
  for ( ; *s; s++) {
    if (*s != ' ' && *s != '\t' && *s != '\n' && *s != '\r')
      return FALSE;
  }
  return TRUE;
}

void source_pass(IFILE* ifile, const Options* options) {
  unsigned i;

  assert(ifile != NULL);

  if (options && options->verbose)
    puts("Reading source");

  for (i = 0; i < source_lines(ifile->source); i++) {
    const char* line = source_text(ifile->source, i);
    assert(line != NULL);
    if (!blank(line)) {
      IREC* irec = new_irec(ifile);
      set_source(irec, i);
    }
  }
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_blank(CuTest* tc) {
  CuAssertIntEquals(tc, TRUE, blank(""));
  CuAssertIntEquals(tc, TRUE, blank("\n"));
  CuAssertIntEquals(tc, TRUE, blank(" \t\n\r"));
  CuAssertIntEquals(tc, FALSE, blank(" \t\n\rX"));
  CuAssertIntEquals(tc, FALSE, blank("XYZ"));
}

static void test_source_pass(CuTest* tc) {
  SOURCE* src = NULL;
  IFILE* ifile = NULL;
  Options* opts = new_options();

  src = load_source_mem("\nfred\n   glorn\n  \nsmee hee\n");

  ifile = new_ifile(src, false);

  source_pass(ifile, opts);

  CuAssertIntEquals(tc, 3, ifile->used);
  CuAssertIntEquals(tc, 2, ifile->recs[0].si);
  CuAssertIntEquals(tc, 3, ifile->recs[1].si);
  CuAssertIntEquals(tc, 5, ifile->recs[2].si);

  delete_ifile(ifile);
  delete_source(src);
  delete_options(opts);
}

CuSuite* sourcepass_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_blank);
  SUITE_ADD_TEST(suite, test_source_pass);
  return suite;
}

#endif // UNIT_TEST
