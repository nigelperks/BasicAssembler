// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// List of segments.

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "seglist.h"

SEGMENT_LIST* new_segment_list(int case_sensitivity) {
  SEGMENT_LIST* list = emalloc(sizeof *list);
  list->seg = NULL;
  list->allocated = 0;
  list->used = 0;
  list->case_sensitivity = case_sensitivity;
  return list;
}

void delete_segment_list(SEGMENT_LIST* list) {
  if (list) {
    for (int i = 0; i < list->used; i++)
      delete_segment(list->seg[i]);
    efree(list->seg);
    efree(list);
  }
}

SEGNO segment_list_count(SEGMENT_LIST* list) {
  assert(list != NULL);
  return list->used;
}

SEGMENT* get_segment(SEGMENT_LIST* list, SEGNO index) {
  assert(list != NULL);
  assert(index < list->used);
  return list->seg[index];
}

const SEGMENT* get_segment_const(const SEGMENT_LIST* list, SEGNO index) {
  assert(list != NULL);
  assert(index < list->used);
  return list->seg[index];
}

void set_segment(SEGMENT_LIST* list, SEGNO index, SEGMENT* seg) {
  assert(list != NULL);
  assert(index < list->used);
  delete_segment(list->seg[index]);
  list->seg[index] = seg;
}

static unsigned find_segment(const SEGMENT_LIST* list, const char* name) {
  assert(list != NULL);
  assert(name != NULL);

  int (*cmp)(const char*, const char*) = (list->case_sensitivity == CASE_SENSITIVE) ? strcmp : _stricmp;

  for (SEGNO i = 0; i < list->used; i++) {
    SEGMENT* seg = list->seg[i];
    if (seg && cmp(seg->name, name) == 0)
      return i;
  }

  return NO_SEG;
}

SEGNO find_public_segment(const SEGMENT_LIST* list, const char* name) {
  assert(list != NULL);
  assert(name != NULL);

  int (*cmp)(const char*, const char*) = (list->case_sensitivity == CASE_SENSITIVE) ? strcmp : _stricmp;

  for (SEGNO i = 0; i < list->used; i++) {
    SEGMENT* seg = list->seg[i];
    if (seg && seg->public && cmp(seg->name, name) == 0)
      return i;
  }

  return NO_SEG;
}

// Find a stack segment of the given name.
// Return the segment number in the list, or NO_SEG if not found.
SEGNO find_stack_segment(const SEGMENT_LIST* list, const char* name) {
  assert(list != NULL);
  assert(name != NULL);

  int (*cmp)(const char*, const char*) = (list->case_sensitivity == CASE_SENSITIVE) ? strcmp : _stricmp;

  for (SEGNO i = 0; i < list->used; i++) {
    SEGMENT* seg = list->seg[i];
    if (seg && seg->stack && cmp(seg->name, name) == 0)
      return i;
  }

  return NO_SEG;
}

BOOL segment_defined(const SEGMENT_LIST* list, const char* name) {
  return find_segment(list, name) != NO_SEG;
}

const char* segment_name(const SEGMENT_LIST* list, SEGNO i) {
  assert(list != NULL);
  assert(i >= 0 && i < list->used);
  return list->seg[i]->name;
}

BOOL segment_public(const SEGMENT_LIST* list, SEGNO i) {
  assert(list != NULL);
  assert(i >= 0 && i < list->used);
  return list->seg[i]->public;
}

GROUPNO segment_group(const SEGMENT_LIST* list, SEGNO i) {
  assert(list != NULL);
  assert(i >= 0 && i < list->used);
  return list->seg[i]->group;
}

static SEGNO insert(SEGMENT_LIST* list) {
  assert(list->used <= list->allocated);
  if (list->used == list->allocated) {
    SEGNO allocate = (list->allocated == 0) ? 4 : 2 * list->allocated;
    if (allocate < list->allocated)
      fatal("overflow: too many segments\n");
    list->seg = erealloc(list->seg, allocate * sizeof list->seg[0]);
    list->allocated = allocate;
  }

  assert(list->used < list->allocated);
  list->seg[list->used] = NULL;
  return list->used++;
}

// OK to add duplicate name
SEGNO add_segment(SEGMENT_LIST* list, const char* name, BOOL public, BOOL stack, GROUPNO group) {
  SEGNO i = insert(list);
  list->seg[i] = new_segment(name, public, stack, group);
  return i;
}

SEGNO reserve_segment(SEGMENT_LIST* list) {
  return insert(list);
}

// Delete the segment at the given position in the list,
// leaving that position empty.
void remove_segment(SEGMENT_LIST* list, SEGNO index) {
  assert(list != NULL);
  assert(index < list->used);

  delete_segment(list->seg[index]);
  list->seg[index] = NULL;
}

void set_segment_p2align(SEGMENT_LIST* list, SEGNO i, unsigned p2align) {
  assert(list != NULL);
  assert(i < list->used);
  list->seg[i]->p2align = (p2align > MAX_SEGMENT_P2ALIGN) ? MAX_SEGMENT_P2ALIGN : p2align;
}

unsigned segment_p2align(const SEGMENT_LIST* list, SEGNO i) {
  assert(list != NULL);
  assert(i < list->used);
  return list->seg[i]->p2align;
}

// Return the number of the first actual segment in the list,
// the first occupied list index; NO_SEG if none.
SEGNO first_proper_segment(SEGMENT_LIST* list) {
  assert(list != NULL);
  return next_proper_segment(list, -1);
}

// Return the next occupied list index after segno; NO_SEG if none.
SEGNO next_proper_segment(SEGMENT_LIST* list, SEGNO segno) {
  assert(list != NULL);

  for (segno++; segno < list->used; segno++) {
    if (list->seg[segno])
      return segno;
  }

  return NO_SEG;
}

void dump_segments(const SEGMENT_LIST* list) {
  assert(list != NULL);
  for (SEGNO i = 0; i < list->used; i++) {
    SEGMENT* seg = list->seg[i];
    if (seg) {
      printf("SEGMENT %d: %s\n", (int)i, seg->name);
      unsigned j = 0;
      for (DWORD addr = seg->lo; addr < seg->hi; addr++) {
        if (j % 16 == 0)
          printf("%06x: ", (unsigned) addr);
        printf("%02X ", (unsigned) seg->data[addr]);
        j++;
        if (j % 16 == 0)
          putchar('\n');
      }
      if (j % 16)
        putchar('\n');
    }
  }
}


#ifdef UNIT_TEST

#include "CuTest.h"

static void test_segment_list(CuTest* tc) {
  SEGMENT_LIST* list = new_segment_list(CASE_INSENSITIVE);
  CuAssertPtrNotNull(tc, list);
  CuAssertPtrEquals(tc, NULL, list->seg);
  CuAssertIntEquals(tc, 0, list->allocated);
  CuAssertIntEquals(tc, 0, list->used);
  CuAssertIntEquals(tc, 0, segment_list_count(list));
  CuAssertIntEquals(tc, CASE_INSENSITIVE, list->case_sensitivity);
  CuAssertIntEquals(tc, FALSE, segment_defined(list, "norg"));

  unsigned i = add_segment(list, "norg", FALSE, FALSE, 3);

  SEGMENT* seg = get_segment(list, i);
  CuAssertPtrNotNull(tc, seg);
  CuAssertPtrNotNull(tc, list->seg);
  CuAssertTrue(tc, list->allocated >= 1);
  CuAssertIntEquals(tc, 1, list->used);
  CuAssertIntEquals(tc, TRUE, segment_defined(list, "Norg"));
  CuAssertIntEquals(tc, FALSE, segment_public(list, i));
  CuAssertIntEquals(tc, 1, segment_list_count(list));

  CuAssertPtrEquals(tc, seg, get_segment(list, 0));

  remove_segment(list, 0);
  CuAssertPtrEquals(tc, NULL, get_segment(list, 0));
  CuAssertIntEquals(tc, 1, segment_list_count(list));

  add_segment(list, "norg", FALSE, TRUE, 0);
  CuAssertIntEquals(tc, 2, segment_list_count(list));
  CuAssertPtrEquals(tc, NULL, get_segment(list, 0));
  CuAssertPtrNotNull(tc, get_segment(list, 1));
  CuAssertIntEquals(tc, TRUE, segment_defined(list, "norg"));
  CuAssertIntEquals(tc, FALSE, segment_defined(list, "borg"));

  seg = new_segment("Harry", TRUE, FALSE, 3);
  set_segment(list, 0, seg);
  CuAssertPtrEquals(tc, seg, get_segment(list, 0));
  CuAssertStrEquals(tc, "Harry", segment_name(list, 0));
  CuAssertIntEquals(tc, 3, segment_group(list, 0));
  CuAssertIntEquals(tc, TRUE, segment_public(list, 0));
  CuAssertIntEquals(tc, TRUE, segment_defined(list, "Harry"));

  CuAssertIntEquals(tc, 2, list->used);
  SEGNO segno = reserve_segment(list);
  CuAssertIntEquals(tc, 2, segno);
  CuAssertIntEquals(tc, 3, list->used);
  CuAssertPtrEquals(tc, NULL, list->seg[segno]);

  delete_segment_list(list);
}

static void test_iterate(CuTest* tc) {
  SEGMENT_LIST* list = new_segment_list(CASE_INSENSITIVE);

  CuAssertIntEquals(tc, NO_SEG, first_proper_segment(list));

  add_segment(list, "FROG", FALSE, FALSE, NO_GROUP);
  add_segment(list, "DOG", TRUE, FALSE, NO_GROUP);
  reserve_segment(list);
  add_segment(list, "BOG", TRUE, FALSE, 3);

  CuAssertIntEquals(tc, 0, first_proper_segment(list));
  CuAssertIntEquals(tc, 1, next_proper_segment(list, 0));
  CuAssertIntEquals(tc, 3, next_proper_segment(list, 1));

  delete_segment_list(list);
}

CuSuite* segment_list_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_segment_list);
  SUITE_ADD_TEST(suite, test_iterate);
  return suite;
}

#endif // UNIT_TEST