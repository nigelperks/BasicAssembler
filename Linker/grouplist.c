// Basic Linker
// Copyright (c) 2021 Nigel Perks
// List of groups.

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "grouplist.h"
#include "symbol.h"

GROUP_LIST* new_group_list(int case_sensitivity) {
  GROUP_LIST* list = emalloc(sizeof *list);
  list->groups = NULL;
  list->allocated = 0;
  list->used = 0;
  list->case_sensitivity = case_sensitivity;
  return list;
}

void delete_group_list(GROUP_LIST* list) {
  if (list) {
    for (unsigned i = 0; i < list->used; i++)
      free(list->groups[i].name);
    free(list->groups);
    free(list);
  }
}

GROUPNO group_list_count(const GROUP_LIST* list) {
  assert(list != NULL);
  return list->used;
}

const char* group_name(const GROUP_LIST* list, unsigned index) {
  assert(list != NULL);
  assert(index < list->used);
  return list->groups[index].name;
}

SEGNO group_main_segno(const GROUP_LIST* list, unsigned index) {
  assert(list != NULL);
  assert(index < list->used);
  return list->groups[index].main_segno;
}

void set_group_main_segno(const GROUP_LIST* list, unsigned index, SEGNO segno) {
  assert(list != NULL);
  assert(index < list->used);
  list->groups[index].main_segno = segno;
}

unsigned group_index(GROUP_LIST* list, const char* name) {
  assert(list != NULL);
  assert(name != NULL);

  int (*cmp)(const char*, const char*) = (list->case_sensitivity == CASE_SENSITIVE) ? strcmp : _stricmp;

  for (unsigned i = 0; i < list->used; i++) {
    if (cmp(list->groups[i].name, name) == 0)
      return i;
  }

  return NO_GROUP;
}

BOOL group_defined(GROUP_LIST* list, const char* name) {
  return group_index(list, name) != NO_GROUP;
}

unsigned add_group(GROUP_LIST* list, const char* name) {
  if (group_defined(list, name))
    fatal("duplicate group name: %s\n", name);

  assert(list->used <= list->allocated);
  if (list->used == list->allocated) {
    unsigned allocate = (list->allocated == 0) ? 4 : 2 * list->allocated;
    if (allocate < list->allocated)
      fatal("overflow: too many groups\n");
    list->groups = erealloc(list->groups, allocate * sizeof list->groups[0]);
    list->allocated = allocate;
  }

  assert(list->used < list->allocated);
  unsigned i = list->used++;
  list->groups[i].name = estrdup(name);
  list->groups[i].main_segno = NO_SEG;
  return i;
}

#ifdef UNIT_TEST

#include "cutest.h"

static void test_group_list(CuTest* tc) {
  GROUP_LIST* list = new_group_list(CASE_INSENSITIVE);
  CuAssertPtrNotNull(tc, list);
  CuAssertPtrEquals(tc, NULL, list->groups);
  CuAssertIntEquals(tc, 0, list->allocated);
  CuAssertIntEquals(tc, 0, list->used);
  CuAssertIntEquals(tc, 0, group_list_count(list));
  CuAssertIntEquals(tc, CASE_INSENSITIVE, list->case_sensitivity);
  CuAssertIntEquals(tc, FALSE, group_defined(list, "norg"));

  add_group(list, "norg");
  CuAssertPtrNotNull(tc, list->groups);
  CuAssertTrue(tc, list->allocated >= 1);
  CuAssertIntEquals(tc, 1, list->used);
  CuAssertIntEquals(tc, TRUE, group_defined(list, "Norg"));
  CuAssertIntEquals(tc, 1, group_list_count(list));
  CuAssertStrEquals(tc, "norg", group_name(list, 0));
  CuAssertIntEquals(tc, 0, group_index(list, "NORG"));
  CuAssertIntEquals(tc, NO_GROUP, group_index(list, "BORG"));

  delete_group_list(list);
}

CuSuite* group_list_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_group_list);
  return suite;
}

#endif // UNIT_TEST