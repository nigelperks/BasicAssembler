// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// Segmented program: segments, groups, symbols.

#include <stdlib.h>
#include "segmented.h"

SEGMENTED* new_segmented(const char* name, int case_sensitivity) {
  SEGMENTED* segs = emalloc(sizeof *segs);
  segs->name = estrdup(name);
  segs->segs = new_segment_list(case_sensitivity);
  segs->groups = new_group_list(case_sensitivity);
  segs->st = new_symbol_table(case_sensitivity);
  segs->fixups = new_fixups();
  segs->start.segno = NO_SEG;
  segs->start.offset = 0;
  segs->stack.segno = NO_SEG;
  segs->stack.offset = 0;
  return segs;
}

void delete_segmented(SEGMENTED* segs) {
  if (segs) {
    efree(segs->name);
    delete_segment_list(segs->segs);
    delete_group_list(segs->groups);
    delete_symbol_table(segs->st);
    delete_fixups(segs->fixups);
    efree(segs);
  }
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_segmented(CuTest* tc) {
  SEGMENTED* p = new_segmented("Salad", CASE_SENSITIVE);

  CuAssertPtrNotNull(tc, p->name);
  CuAssertStrEquals(tc, "Salad", p->name);
  CuAssertPtrNotNull(tc, p->segs);
  CuAssertPtrNotNull(tc, p->groups);
  CuAssertPtrNotNull(tc, p->st);
  CuAssertPtrNotNull(tc, p->fixups);
  CuAssertIntEquals(tc, NO_SEG, p->start.segno);
  CuAssertIntEquals(tc, 0, p->start.offset);
  CuAssertIntEquals(tc, NO_SEG, p->stack.segno);
  CuAssertIntEquals(tc, 0, p->stack.offset);

  delete_segmented(p);

  delete_segmented(NULL);
}

CuSuite* segmented_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_segmented);
  return suite;
}

#endif // UNIT_TEST