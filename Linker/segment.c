// Basic Linker
// Copyright (c) 2021 Nigel Perks
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

  seg->pc = 0;
  seg->data = NULL;
  seg->allocated = 0;
  seg->lo = 0;
  seg->hi = 0;

  return seg;
}

void delete_segment(SEGMENT* seg) {
  if (seg) {
    free(seg->name);
    free(seg->data);
    free(seg);
  }
}

const char* seg_name(const SEGMENT* seg) {
  assert(seg != NULL);
  return seg->name;
}

DWORD seg_pc(const SEGMENT* seg) {
  assert(seg != NULL);

  return seg->pc;
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

#define ALLOCATION_UNIT (0x4000)

static void write_segment(SEGMENT* seg, DWORD offset, const BYTE* buf, unsigned size) {
  assert(seg != NULL);

  if (size == 0)
    return;

  if (offset + size < offset)
    fatal("segment size overflow\n");

  assert(buf != NULL);

  if (offset > seg->allocated || seg->allocated - offset < size) {
    size_t allocate = offset + size;
    if (allocate % ALLOCATION_UNIT)
      allocate += (ALLOCATION_UNIT - allocate % ALLOCATION_UNIT);
    assert(allocate % ALLOCATION_UNIT == 0);
    assert(allocate >= offset + size);
    BYTE* data = ecalloc(allocate, 1);
    if (seg->data != NULL && seg->allocated > 0)
      memcpy(data, seg->data, seg->allocated);
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

  memcpy(seg->data + offset, buf, size);
}

void emit_segment_data(SEGMENT* seg, const BYTE* buf, unsigned size) {
  write_segment(seg, seg->pc, buf, size);
  seg->pc += size;
}

void append_segment_data(SEGMENT* dest, const SEGMENT* src) {
  assert(dest != NULL);
  assert(src != NULL);
  assert(src->lo <= src->hi);

  write_segment(dest, dest->hi + src->lo, src->data + src->lo, src->hi - src->lo);
  dest->pc = dest->hi;
}

void pad_segment_to_paragraph(SEGMENT* seg) {
  assert(seg != NULL);
  seg->pc = seg->hi;
  if (seg->hi % 16) {
    BYTE buf[16];
    memset(buf, 0, sizeof buf);
    emit_segment_data(seg, buf, 16 - seg->hi % 16);
    assert(seg->hi % 16 == 0);
    assert(seg->pc == seg->hi);
  }
}

DWORD padded_length(const SEGMENT* seg) {
  assert(seg != NULL);
  DWORD len = seg->hi;
  if (len % 16)
    len += (16 - len % 16);
  assert(len % 16 == 0);
  return len;
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
  CuAssertIntEquals(tc, 0, p->pc);
  CuAssertPtrEquals(tc, NULL, p->data);
  CuAssertIntEquals(tc, 0, p->allocated);
  CuAssertIntEquals(tc, 0, p->lo);
  CuAssertIntEquals(tc, 0, p->hi);

  CuAssertTrue(tc, seg_name(p) == NULL);
  CuAssertIntEquals(tc, 0, seg_pc(p));
  CuAssertIntEquals(tc, 0, seg_lo(p));
  CuAssertIntEquals(tc, 0, seg_hi(p));
  CuAssertIntEquals(tc, FALSE, segment_has_data(p));
  CuAssertPtrEquals(tc, NULL, seg_data(p));
  CuAssertIntEquals(tc, 3, seg_group(p));
  CuAssertIntEquals(tc, TRUE, seg_public(p));
  CuAssertIntEquals(tc, FALSE, seg_stack(p));
  delete_segment(p);

  p = new_segment("charlie", FALSE, TRUE, NO_GROUP);
  CuAssertPtrNotNull(tc, p);
  CuAssertPtrNotNull(tc, p->name);
  CuAssertStrEquals(tc, "charlie", p->name);
  CuAssertIntEquals(tc, FALSE, p->public);
  CuAssertIntEquals(tc, TRUE, p->stack);
  CuAssertIntEquals(tc, NO_GROUP, p->group);

  CuAssertStrEquals(tc, "charlie", seg_name(p));
  CuAssertIntEquals(tc, NO_GROUP, seg_group(p));
  CuAssertIntEquals(tc, FALSE, seg_public(p));
  CuAssertIntEquals(tc, TRUE, seg_stack(p));
  delete_segment(p);
}

static void test_padded_length(CuTest* tc) {
  SEGMENT* seg = new_segment(NULL, FALSE, FALSE, NO_GROUP);

  CuAssertIntEquals(tc, 0, padded_length(seg));

  seg->hi = 1;
  CuAssertIntEquals(tc, 16, padded_length(seg));

  seg->hi = 15;
  CuAssertIntEquals(tc, 16, padded_length(seg));

  seg->hi = 16;
  CuAssertIntEquals(tc, 16, padded_length(seg));

  seg->hi = 17;
  CuAssertIntEquals(tc, 32, padded_length(seg));

  delete_segment(seg);
}

static void test_pad_segment(CuTest* tc) {
  SEGMENT* seg = new_segment(NULL, FALSE, FALSE, NO_GROUP);

  pad_segment_to_paragraph(seg);
  CuAssertIntEquals(tc, 0, seg->hi);
  CuAssertPtrEquals(tc, NULL, seg->data);

  seg->allocated = 128;
  seg->data = emalloc(seg->allocated);

  pad_segment_to_paragraph(seg);
  CuAssertIntEquals(tc, 0, seg->hi);

  seg->hi = 1;
  pad_segment_to_paragraph(seg);
  CuAssertIntEquals(tc, 16, seg->hi);
  CuAssertIntEquals(tc, 16, seg->pc);

  seg->hi = 16;
  pad_segment_to_paragraph(seg);
  CuAssertIntEquals(tc, 16, seg->hi);
  CuAssertIntEquals(tc, 16, seg->pc);

  seg->hi = 129;
  pad_segment_to_paragraph(seg);
  CuAssertIntEquals(tc, 144, seg->hi);
  CuAssertIntEquals(tc, 144, seg->pc);
  CuAssertTrue(tc, seg->allocated >= 144);

  delete_segment(seg);
}

static void test_write_segment(CuTest* tc) {
  const size_t BUF_SIZE = ALLOCATION_UNIT + 123;
  BYTE* buf = emalloc(BUF_SIZE);
  SEGMENT* seg = new_segment(NULL, FALSE, FALSE, NO_GROUP);

  memset(buf, '*', BUF_SIZE);
  write_segment(seg, ALLOCATION_UNIT / 2, buf, BUF_SIZE);

  CuAssertIntEquals(tc, ALLOCATION_UNIT * 2, seg->allocated);
  CuAssertIntEquals(tc, ALLOCATION_UNIT / 2, seg->lo);
  CuAssertIntEquals(tc, ALLOCATION_UNIT / 2 + BUF_SIZE, seg->hi);
  CuAssertPtrNotNull(tc, seg->data);
  CuAssertTrue(tc, memcmp(seg->data + ALLOCATION_UNIT/2, buf, BUF_SIZE) == 0);
  CuAssertIntEquals(tc, 0, seg->pc);

  delete_segment(seg);
  free(buf);
}

static BOOL zero(const BYTE* p, size_t len) {
  while (len--)
    if (*p++ != 0)
      return FALSE;
  return TRUE;
}

static void test_emit_segment(CuTest* tc) {
  SEGMENT* seg = new_segment(NULL, FALSE, FALSE, NO_GROUP);
  BYTE buf[37];

  memset(buf, '*', sizeof buf);

  seg->pc = 0x100;
  emit_segment_data(seg, buf, sizeof buf);
  CuAssertIntEquals(tc, ALLOCATION_UNIT, seg->allocated);
  CuAssertIntEquals(tc, 0x100, seg->lo);
  CuAssertIntEquals(tc, 0x100 + sizeof buf, seg->hi);
  CuAssertPtrNotNull(tc, seg->data);
  CuAssertTrue(tc, zero(seg->data, 0x100));
  CuAssertTrue(tc, memcmp(seg->data + 0x100, buf, sizeof buf) == 0);
  CuAssertTrue(tc, zero(seg->data + seg->hi, seg->allocated - seg->hi));
  CuAssertIntEquals(tc, 0x100 + sizeof buf, seg->pc);

  seg->pc = 43;
  emit_segment_data(seg, buf, 12);
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

  write_segment(dest, 50, buf2, SIZE2);
  // 0..49 (50): blank
  // 50..50+AU-1 (AU): buf2

  append_segment_data(dest, src);

  CuAssertIntEquals(tc, ALLOCATION_UNIT * 2, dest->allocated);
  CuAssertPtrNotNull(tc, dest->data);
  CuAssertTrue(tc, zero(dest->data, 50));
  CuAssertIntEquals(tc, 50, dest->lo);
  CuAssertTrue(tc, memcmp(dest->data + 50, buf2, SIZE2) == 0);
  CuAssertTrue(tc, zero(dest->data + 50 + SIZE2, 100));
  CuAssertTrue(tc, memcmp(dest->data + 50 + SIZE2 + 100, buf1, SIZE1) == 0);
  CuAssertIntEquals(tc, 50 + SIZE2 + 100 + SIZE1, dest->hi);
  CuAssertTrue(tc, zero(dest->data + dest->hi, dest->allocated - dest->hi));

  CuAssertIntEquals(tc, dest->hi, dest->pc);
  
  delete_segment(src);
  delete_segment(dest);
  free(buf1);
  free(buf2);
}

CuSuite* segment_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_segment);
  SUITE_ADD_TEST(suite, test_padded_length);
  SUITE_ADD_TEST(suite, test_pad_segment);
  SUITE_ADD_TEST(suite, test_write_segment);
  SUITE_ADD_TEST(suite, test_emit_segment);
  SUITE_ADD_TEST(suite, test_append_segment);
  return suite;
}

#endif // UNIT_TEST