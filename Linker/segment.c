// Basic Linker
// Copyright (c) 2021-2 Nigel Perks
// Segment-handling in linker.

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "segment.h"

SEGMENT* new_segment(const char* name, BOOL public, BOOL stack, GROUPNO group) {
  SEGMENT* seg = emalloc(sizeof *seg);

  seg->name = name ? estrdup(name) : NULL;
  seg->public = public;
  seg->stack = stack;
  seg->group = group;
  seg->p2align = DEFAULT_SEGMENT_P2ALIGN;

  seg->pc = 0;
  seg->data = NULL;
  seg->allocated = 0;
  seg->lo = 0;
  seg->hi = 0;

  seg->space = 0;

  return seg;
}

void delete_segment(SEGMENT* seg) {
  if (seg) {
    efree(seg->name);
    efree(seg->data);
    efree(seg);
  }
}

const char* seg_name(const SEGMENT* seg) {
  assert(seg != NULL);
  return seg->name;
}

DWORD seg_lo(const SEGMENT* seg) {
  assert(seg != NULL);

  return seg->lo;
}

DWORD seg_hi(const SEGMENT* seg) {
  assert(seg != NULL);

  return seg->hi;
}

BYTE* seg_data(SEGMENT* seg) {
  assert(seg != NULL);

  return seg->data;
}

BOOL segment_has_data(const SEGMENT* seg) {
  assert(seg != NULL);

  return seg->hi > seg->lo;
}

DWORD seg_space(const SEGMENT* seg) {
  assert(seg != NULL);
  return seg->space;
}

int seg_group(const SEGMENT* seg) {
  assert(seg != NULL);

  return seg->group;
}

BOOL seg_public(const SEGMENT* seg) {
  assert(seg != NULL);

  return seg->public;
}

BOOL seg_stack(const SEGMENT* seg) {
  assert(seg != NULL);

  return seg->stack;
}

unsigned seg_p2align(const SEGMENT* seg) {
  assert(seg != NULL);
  return seg->p2align;
}

void inc_p2align(SEGMENT* dest, const SEGMENT* src) {
  assert(dest != NULL && src != NULL && dest->p2align < src->p2align);
  if (dest->p2align < src->p2align)
    dest->p2align = src->p2align;
}

#define ALLOCATION_UNIT (0x4000)

static void ensure_writeable(SEGMENT* seg, DWORD offset, unsigned size) {
  assert(seg != NULL);

  if (size == 0)
    return;

  if (offset + size < offset)
    fatal("segment size overflow: offset %08lxh, size %0xh = %u\n", (unsigned long) offset, size);

  if (offset > seg->allocated || seg->allocated - offset < size) {
    size_t allocate = offset + size;
    if (allocate % ALLOCATION_UNIT)
      allocate += (ALLOCATION_UNIT - allocate % ALLOCATION_UNIT);
    assert(allocate % ALLOCATION_UNIT == 0);
    assert(allocate >= offset + size);
    BYTE* data = ecalloc(allocate, 1);
    if (seg->data != NULL && seg->allocated > 0)
      memcpy(data, seg->data, seg->allocated);
    efree(seg->data);
    seg->data = data;
    seg->allocated = allocate;
  }

  assert(seg->data != NULL);
  assert(seg->allocated > offset);
  assert(seg->allocated - offset >= size);

  if (seg->hi <= seg->lo) {
    seg->lo = offset;
    seg->hi = offset + size;
  }
  else {
    if (offset < seg->lo)
      seg->lo = offset;
    if (offset + size > seg->hi)
      seg->hi = offset + size;
  }
}

void write_segment(SEGMENT* seg, DWORD offset, const BYTE* buf, unsigned size) {
  if (size == 0)
    return;

  ensure_writeable(seg, offset, size);

  assert(seg->data != NULL);
  assert(seg->allocated > offset);
  assert(seg->allocated - offset >= size);

  memcpy(seg->data + offset, buf, size);
}

void load_segment_data(SEGMENT* seg, const BYTE* buf, unsigned size) {
  write_segment(seg, seg->pc, buf, size);
  seg->pc += size;
}

void load_segment_space(SEGMENT* seg, unsigned size) {
  assert(seg != NULL);
  if (seg->space + size < seg->space)
    fatal("uninitialised space too large: %s\n", seg->name);
  seg->space += size;
}

// Alignment must be done already by caller.
void append_segment(SEGMENT* dest, const SEGMENT* src) {
  assert(dest != NULL);
  assert(dest->lo <= dest->hi);
  assert(src != NULL);
  assert(src->lo <= src->hi);

  if (src->hi > src->lo) {
    if (dest->space > 0)
      fatal("cannot append initialised data in '%s' to uninitialised space in '%s'\n",
            src->name, dest->name);
    write_segment(dest, dest->hi + src->lo, src->data + src->lo, src->hi - src->lo);
  }

  dest->space += src->space;
}

DWORD segment_end(const SEGMENT* seg) {
  return seg->hi + seg->space;
}

DWORD segment_end_p2aligned(const SEGMENT* seg, unsigned p2align) {
  return p2aligned(seg->hi + seg->space, p2align);
}

void align_segment_hi(SEGMENT* seg, unsigned p2align) {
  assert(seg != NULL);
  unsigned align = 1 << p2align;
  if (seg->hi % align) {
    ensure_writeable(seg, seg->hi, align - seg->hi % align);
    assert(seg->hi % align == 0);
  }
}

void space_out(SEGMENT* seg, unsigned p2align) {
  assert(seg != NULL);
  seg->space += p2gap(seg->hi + seg->space, p2align);
}


#ifdef UNIT_TEST

#include "CuTest.h"

static void test_new_segment(CuTest* tc) {
  SEGMENT* p;

  p = new_segment(NULL, TRUE, FALSE, 3);

  CuAssertPtrNotNull(tc, p);
  CuAssertPtrEquals(tc, NULL, p->name);
  CuAssertIntEquals(tc, TRUE, p->public);
  CuAssertIntEquals(tc, FALSE, p->stack);
  CuAssertIntEquals(tc, 3, p->group);
  CuAssertIntEquals(tc, 4, p->p2align);
  CuAssertIntEquals(tc, 0, p->pc);
  CuAssertPtrEquals(tc, NULL, p->data);
  CuAssertIntEquals(tc, 0, p->allocated);
  CuAssertIntEquals(tc, 0, p->lo);
  CuAssertIntEquals(tc, 0, p->hi);
  CuAssertIntEquals(tc, 0, p->space);

  CuAssertTrue(tc, seg_name(p) == NULL);
  CuAssertIntEquals(tc, TRUE, seg_public(p));
  CuAssertIntEquals(tc, FALSE, seg_stack(p));
  CuAssertIntEquals(tc, 3, seg_group(p));
  CuAssertIntEquals(tc, 4, seg_p2align(p));
  CuAssertIntEquals(tc, FALSE, segment_has_data(p));
  CuAssertPtrEquals(tc, NULL, seg_data(p));
  CuAssertIntEquals(tc, 0, seg_lo(p));
  CuAssertIntEquals(tc, 0, seg_hi(p));
  CuAssertIntEquals(tc, 0, seg_space(p));

  delete_segment(p);

  p = new_segment("charlie", FALSE, TRUE, NO_GROUP);
  CuAssertPtrNotNull(tc, p);
  CuAssertPtrNotNull(tc, p->name);
  CuAssertStrEquals(tc, "charlie", p->name);
  CuAssertIntEquals(tc, FALSE, p->public);
  CuAssertIntEquals(tc, TRUE, p->stack);
  CuAssertIntEquals(tc, NO_GROUP, p->group);
  CuAssertIntEquals(tc, 4, p->p2align);

  CuAssertStrEquals(tc, "charlie", seg_name(p));
  CuAssertIntEquals(tc, FALSE, seg_public(p));
  CuAssertIntEquals(tc, TRUE, seg_stack(p));
  CuAssertIntEquals(tc, NO_GROUP, seg_group(p));

  delete_segment(p);
}

static void test_ensure_writeable(CuTest* tc) {
  SEGMENT* seg = new_segment("TEST", FALSE, FALSE, NO_GROUP);
  const DWORD PC = 0xFACE;

  seg->pc = PC;

  ensure_writeable(seg, 0, 0);
  CuAssertPtrEquals(tc, NULL, seg->data);
  CuAssertIntEquals(tc, 0, seg->allocated);
  CuAssertIntEquals(tc, 0, seg->lo);
  CuAssertIntEquals(tc, 0, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);
  CuAssertIntEquals(tc, PC, seg->pc);

  ensure_writeable(seg, 100, 0);
  CuAssertPtrEquals(tc, NULL, seg->data);
  CuAssertIntEquals(tc, 0, seg->allocated);
  CuAssertIntEquals(tc, 0, seg->lo);
  CuAssertIntEquals(tc, 0, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);
  CuAssertIntEquals(tc, PC, seg->pc);

  ensure_writeable(seg, 40, 20);
  CuAssertPtrNotNull(tc, seg->data);
  CuAssertIntEquals(tc, ALLOCATION_UNIT, seg->allocated);
  CuAssertIntEquals(tc, 40, seg->lo);
  CuAssertIntEquals(tc, 60, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);
  CuAssertTrue(tc, zero(seg->data, 60));
  CuAssertIntEquals(tc, PC, seg->pc);

  ensure_writeable(seg, 44, 16);
  CuAssertPtrNotNull(tc, seg->data);
  CuAssertIntEquals(tc, ALLOCATION_UNIT, seg->allocated);
  CuAssertIntEquals(tc, 40, seg->lo);
  CuAssertIntEquals(tc, 60, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);
  CuAssertTrue(tc, zero(seg->data, 60));
  CuAssertIntEquals(tc, PC, seg->pc);

  static const char PATTERN[] = "****!!!!****!!!!";
  memcpy(seg->data + 40, PATTERN, sizeof PATTERN);

  ensure_writeable(seg, 44, 16);
  CuAssertPtrNotNull(tc, seg->data);
  CuAssertIntEquals(tc, ALLOCATION_UNIT, seg->allocated);
  CuAssertIntEquals(tc, 40, seg->lo);
  CuAssertIntEquals(tc, 60, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);
  CuAssertTrue(tc, memcmp(seg->data + 40, PATTERN, sizeof PATTERN) == 0);
  CuAssertIntEquals(tc, PC, seg->pc);

  ensure_writeable(seg, 20, 30);
  CuAssertPtrNotNull(tc, seg->data);
  CuAssertIntEquals(tc, ALLOCATION_UNIT, seg->allocated);
  CuAssertIntEquals(tc, 20, seg->lo);
  CuAssertIntEquals(tc, 60, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);
  CuAssertTrue(tc, memcmp(seg->data + 40, PATTERN, sizeof PATTERN) == 0);
  CuAssertIntEquals(tc, PC, seg->pc);

  ensure_writeable(seg, ALLOCATION_UNIT / 2, ALLOCATION_UNIT);
  CuAssertPtrNotNull(tc, seg->data);
  CuAssertIntEquals(tc, ALLOCATION_UNIT * 2, seg->allocated);
  CuAssertIntEquals(tc, 20, seg->lo);
  CuAssertIntEquals(tc, 3 * ALLOCATION_UNIT / 2, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);
  CuAssertTrue(tc, memcmp(seg->data + 40, PATTERN, sizeof PATTERN) == 0);
  CuAssertIntEquals(tc, PC, seg->pc);

  delete_segment(seg);
}

static void test_write_segment(CuTest* tc) {
  const size_t BUF_SIZE = ALLOCATION_UNIT + 123;
  BYTE* buf = emalloc(BUF_SIZE);
  memset(buf, '*', BUF_SIZE);

  SEGMENT* seg = new_segment(NULL, FALSE, FALSE, NO_GROUP);

  const DWORD PC = 0xDEADBEEF;
  seg->pc = PC;

  write_segment(seg, 0, buf, 0);
  CuAssertPtrEquals(tc, NULL, seg->data);
  CuAssertIntEquals(tc, 0, seg->allocated);
  CuAssertIntEquals(tc, 0, seg->lo);
  CuAssertIntEquals(tc, 0, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);
  CuAssertIntEquals(tc, PC, seg->pc);

  write_segment(seg, 100, buf, 0);
  CuAssertPtrEquals(tc, NULL, seg->data);
  CuAssertIntEquals(tc, 0, seg->allocated);
  CuAssertIntEquals(tc, 0, seg->lo);
  CuAssertIntEquals(tc, 0, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);
  CuAssertIntEquals(tc, PC, seg->pc);

  write_segment(seg, ALLOCATION_UNIT / 2, buf, BUF_SIZE);
  CuAssertPtrNotNull(tc, seg->data);
  CuAssertIntEquals(tc, ALLOCATION_UNIT * 2, seg->allocated);
  CuAssertIntEquals(tc, ALLOCATION_UNIT / 2, seg->lo);
  CuAssertIntEquals(tc, ALLOCATION_UNIT / 2 + BUF_SIZE, seg->hi);
  CuAssertTrue(tc, memcmp(seg->data + ALLOCATION_UNIT/2, buf, BUF_SIZE) == 0);
  CuAssertIntEquals(tc, 0, seg->space);
  CuAssertIntEquals(tc, PC, seg->pc);

  delete_segment(seg);
  efree(buf);
}

static void test_load_segment_data(CuTest* tc) {
  SEGMENT* seg = new_segment(NULL, FALSE, FALSE, NO_GROUP);
  BYTE buf[37];

  memset(buf, '*', sizeof buf);

  seg->pc = 0x100;
  load_segment_data(seg, buf, sizeof buf);
  CuAssertIntEquals(tc, ALLOCATION_UNIT, seg->allocated);
  CuAssertIntEquals(tc, 0x100, seg->lo);
  CuAssertIntEquals(tc, 0x100 + sizeof buf, seg->hi);
  CuAssertPtrNotNull(tc, seg->data);
  CuAssertTrue(tc, zero(seg->data, 0x100));
  CuAssertTrue(tc, memcmp(seg->data + 0x100, buf, sizeof buf) == 0);
  CuAssertTrue(tc, zero(seg->data + seg->hi, seg->allocated - seg->hi));
  CuAssertIntEquals(tc, 0x100 + sizeof buf, seg->pc);
  CuAssertIntEquals(tc, 0, seg->space);

  seg->pc = 43;
  load_segment_data(seg, buf, 12);
  CuAssertIntEquals(tc, ALLOCATION_UNIT, seg->allocated);
  CuAssertIntEquals(tc, 43, seg->lo);
  CuAssertIntEquals(tc, 0x100 + sizeof buf, seg->hi);
  CuAssertPtrNotNull(tc, seg->data);
  CuAssertTrue(tc, zero(seg->data, 43));
  CuAssertTrue(tc, memcmp(seg->data + 43, buf, 12) == 0);
  CuAssertTrue(tc, zero(seg->data + 55, 0x100 - 55));
  CuAssertTrue(tc, memcmp(seg->data + 0x100, buf, sizeof buf) == 0);
  CuAssertTrue(tc, zero(seg->data + seg->hi, seg->allocated - seg->hi));
  CuAssertIntEquals(tc, 55, seg->pc);
  CuAssertIntEquals(tc, 0, seg->space);

  delete_segment(seg);
}

static void test_load_segment_space(CuTest* tc) {
  SEGMENT* seg = new_segment("TEST", FALSE, FALSE, 2);

  const DWORD PC = 0xFF11;
  seg->pc = PC;

  load_segment_space(seg, 0x1234);
  CuAssertIntEquals(tc, 0x1234, seg->space);
  CuAssertIntEquals(tc, PC, seg->pc);

  load_segment_space(seg, 0x44);
  CuAssertIntEquals(tc, 0x1278, seg->space);
  CuAssertIntEquals(tc, PC, seg->pc);

  delete_segment(seg);
}

static void test_append_segment(CuTest* tc) {
  SEGMENT* src = new_segment("SOURCE", FALSE, FALSE, NO_GROUP);
  SEGMENT* dest = new_segment("DEST", FALSE, FALSE, NO_GROUP);
  const size_t SIZE1 = 64;
  const size_t SIZE2 = ALLOCATION_UNIT;
  BYTE* buf1 = emalloc(SIZE1);
  BYTE* buf2 = emalloc(SIZE2);

  memset(buf1, '+', SIZE1);
  memset(buf2, '-', SIZE2);

  write_segment(src, 100, buf1, SIZE1);
  // 0..99 (100): blank
  // 100..163 (64): buf1
  src->space = 0x234;

  write_segment(dest, 50, buf2, SIZE2);
  // 0..49 (50): blank
  // 50..50+AU-1 (AU): buf2

  append_segment(dest, src);

  CuAssertIntEquals(tc, ALLOCATION_UNIT * 2, dest->allocated);
  CuAssertTrue(tc, zero(dest->data, 50));
  CuAssertIntEquals(tc, 50, dest->lo);
  CuAssertTrue(tc, memcmp(dest->data + 50, buf2, SIZE2) == 0);
  CuAssertTrue(tc, zero(dest->data + 50 + SIZE2, 100));
  CuAssertTrue(tc, memcmp(dest->data + 50 + SIZE2 + 100, buf1, SIZE1) == 0);
  CuAssertIntEquals(tc, 50 + SIZE2 + 100 + SIZE1, dest->hi);
  CuAssertTrue(tc, zero(dest->data + dest->hi, dest->allocated - dest->hi));
  CuAssertIntEquals(tc, 0x234, dest->space);

  // Append space only
  src->lo = src->hi = 0;
  src->space = 0x432;
  append_segment(dest, src);
  CuAssertIntEquals(tc, 0x666, dest->space);

  delete_segment(src);
  delete_segment(dest);
  efree(buf1);
  efree(buf2);
}

static void test_aligning(CuTest* tc) {
  SEGMENT* seg = new_segment("TEST", TRUE, FALSE, 1);

  // No data or space allocated
  CuAssertIntEquals(tc, 0, segment_end(seg));
  CuAssertIntEquals(tc, 0, segment_end_p2aligned(seg, 3));

  align_segment_hi(seg, 3);
  CuAssertIntEquals(tc, 0, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);

  space_out(seg, 3);
  CuAssertIntEquals(tc, 0, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);

  // Data allocated
  ensure_writeable(seg, 0, 13);
  CuAssertIntEquals(tc, 13, seg->hi);
  CuAssertIntEquals(tc, 0, seg->space);
  CuAssertIntEquals(tc, 13, segment_end(seg));
  CuAssertIntEquals(tc, 13, segment_end_p2aligned(seg, 0));
  CuAssertIntEquals(tc, 14, segment_end_p2aligned(seg, 1));
  CuAssertIntEquals(tc, 16, segment_end_p2aligned(seg, 2));
  CuAssertIntEquals(tc, 32, segment_end_p2aligned(seg, 5));
  align_segment_hi(seg, 3);
  CuAssertIntEquals(tc, 16, seg->hi);
  CuAssertIntEquals(tc, 16, segment_end(seg));

  // Space allocated
  seg->space = 200;
  CuAssertIntEquals(tc, 216, segment_end(seg));
  CuAssertIntEquals(tc, 216, segment_end_p2aligned(seg, 3));
  CuAssertIntEquals(tc, 224, segment_end_p2aligned(seg, 5));
  space_out(seg, 5);
  CuAssertIntEquals(tc, 16, seg->hi);
  CuAssertIntEquals(tc, 208, seg->space);
  CuAssertIntEquals(tc, 224, segment_end(seg));

  delete_segment(seg);
}

CuSuite* segment_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_segment);
  SUITE_ADD_TEST(suite, test_ensure_writeable);
  SUITE_ADD_TEST(suite, test_write_segment);
  SUITE_ADD_TEST(suite, test_load_segment_data);
  SUITE_ADD_TEST(suite, test_load_segment_space);
  SUITE_ADD_TEST(suite, test_append_segment);
  SUITE_ADD_TEST(suite, test_aligning);
  return suite;
}

#endif // UNIT_TEST