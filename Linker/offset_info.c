// Basic Linker
// Copyright (c) 2021 Nigel Perks
// Offset information for fixups and relocation.

#include <stdlib.h>
#include <assert.h>
#include "offset_info.h"

const char* fixup_type_name(int t) {
  const char* s = "???";
  switch (t) {
    case FT_OFFSET: s = "offset"; break;
    case FT_EXTERNAL: s = "external"; break;
    case FT_GROUP_ABSOLUTE_JUMP: s = "group absolute jump"; break;
    case FT_SEGMENT: s = "segment"; break;
    case FT_GROUP: s = "group"; break;
    default: assert(0 && "unknown fixup type");
  }
  return s;
}

FIXUPS* new_fixups(void) {
  FIXUPS* p = emalloc(sizeof *p);

  p->offsets = NULL;
  p->allocated = 0;
  p->used = 0;

  return p;
}

void delete_fixups(FIXUPS* p) {
  if (p) {
    free(p->offsets);
    free(p);
  }
}

size_t fixups_count(const FIXUPS* p) {
  assert(p != NULL);
  return p->used;
}

FIXUP* fixup(FIXUPS* p, size_t i) {
  assert(p != NULL);
  assert(i < p->used);
  return &p->offsets[i];
}

size_t segment_and_group_fixups(const FIXUPS* p) {
  assert(p != NULL);
  size_t n = 0;
  for (size_t i = 0; i < p->used; i++) {
    if (p->offsets[i].type == FT_SEGMENT || p->offsets[i].type == FT_GROUP)
      n++;
  }
  return n;
}

#define ALLOC_UNIT (32)

static void expand(FIXUPS* p, unsigned ext) {
  assert(p->used <= p->allocated);
  assert(ext > 0);
  if (p->allocated - p->used < ext) {
    size_t new_allocated = p->used + ext;
    if (new_allocated <= p->allocated)
      fatal("overflow\n");
    if (new_allocated % ALLOC_UNIT)
      new_allocated += (ALLOC_UNIT - new_allocated % ALLOC_UNIT);
    if (new_allocated <= p->allocated)
      fatal("overflow\n");
    p->offsets = erealloc(p->offsets, new_allocated * sizeof p->offsets[0]);
    p->allocated = new_allocated;
  }
  assert(p->used < p->allocated);
  assert(p->allocated - p->used >= ext);
}

void append_fixups(FIXUPS* dest, FIXUPS* source) {
  assert(dest != NULL);
  assert(source != NULL);

  if (source->used > 0) {
    expand(dest, source->used);
    for (unsigned i = 0; i < source->used; i++)
      dest->offsets[dest->used++] = source->offsets[i];
  }
}

static unsigned insert(FIXUPS* p, short type, SEGNO holding_seg, WORD holding_offset, short holding_len) {
  expand(p, 1);
  assert(p->used < p->allocated);
  unsigned i = p->used++;
  FIXUP* offset = p->offsets + i;
  offset->type = type;
  offset->holding_seg = holding_seg;
  offset->holding_offset = holding_offset;
  offset->holding_len = holding_len;
  return i;
}

FIXUP* add_offset_fixup(FIXUPS* p, SEGNO holding_seg, WORD holding_offset,
    short holding_len, SEGNO addressed_seg) {
  assert(p != NULL);

  if (holding_len != 1 && holding_len != 2)
    fatal("offset length %u\n", holding_len);

  unsigned i = insert(p, FT_OFFSET, holding_seg, holding_offset, holding_len);
  FIXUP* offset = p->offsets + i;
  offset->u.addressed_segno = addressed_seg;
  return offset;
}

int add_external_fixup(FIXUPS* p, SEGNO holding_seg, WORD holding_offset,
    short holding_len, SYMBOL_ID sym_id, BOOL jump) {
  unsigned i = insert(p, FT_EXTERNAL, holding_seg, holding_offset, holding_len);
  p->offsets[i].u.ext.id = sym_id;
  p->offsets[i].u.ext.jump = jump;
  return i;
}

void add_group_absolute_jump_fixup(FIXUPS* p, SEGNO holding_seg, WORD holding_offset,
    short holding_len, GROUPNO groupno) {
  unsigned i = insert(p, FT_GROUP_ABSOLUTE_JUMP, holding_seg, holding_offset, holding_len);
  p->offsets[i].u.groupno = groupno;
}


int add_segment_fixup(FIXUPS* p, SEGNO holding_seg, WORD holding_offset,
    short holding_len, SEGNO addressed_seg) {
  assert(p != NULL);
  assert(holding_seg != NO_SEG);
  assert(holding_len == 2);
  assert(addressed_seg != NO_SEG);

  unsigned i = insert(p, FT_SEGMENT, holding_seg, holding_offset, holding_len);
  p->offsets[i].u.seg.addressed_segno = addressed_seg;
  p->offsets[i].u.seg.holding_seg_addr = 0;
  p->offsets[i].u.seg.addressed_base = 0;
  return i;
}

int add_group_fixup(FIXUPS* p, SEGNO holding_seg, WORD holding_offset,
    short holding_len, GROUPNO addressed_groupno) {
  assert(p != NULL);
  assert(holding_seg != NO_SEG);
  assert(holding_len == 2);
  assert(addressed_groupno != NO_GROUP);

  unsigned i = insert(p, FT_GROUP, holding_seg, holding_offset, holding_len);
  p->offsets[i].u.group.addressed_groupno = addressed_groupno;
  p->offsets[i].u.group.holding_seg_addr = 0;
  return i;
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_new_fixups(CuTest* tc) {
  FIXUPS* p;

  p = new_fixups();
  CuAssertPtrNotNull(tc, p);
  CuAssertPtrEquals(tc, NULL, p->offsets);
  CuAssertIntEquals(tc, 0, p->allocated);
  CuAssertIntEquals(tc, 0, p->used);

  delete_fixups(p);
}

static void test_add_offset_info(CuTest* tc) {
  FIXUPS* p = new_fixups();
  FIXUP* offset;

  CuAssertIntEquals(tc, 0, fixups_count(p));

  offset = add_offset_fixup(p, 0, 80, 2, 3);
  CuAssertPtrNotNull(tc, p->offsets);
  CuAssertIntEquals(tc, 1, p->used);
  CuAssertTrue(tc, p->allocated > 0);
  CuAssertPtrEquals(tc, p->offsets + 0, offset);
  CuAssertIntEquals(tc, FT_OFFSET, p->offsets[0].type);
  CuAssertIntEquals(tc, 0, p->offsets[0].holding_seg);
  CuAssertIntEquals(tc, 80, p->offsets[0].holding_offset);
  CuAssertIntEquals(tc, 3, p->offsets[0].u.addressed_segno);

  CuAssertIntEquals(tc, 1, fixups_count(p));
  CuAssertPtrEquals(tc, p->offsets + 0, fixup(p, 0));

  offset = add_offset_fixup(p, 1, 0x1234, 2, 1);
  CuAssertPtrNotNull(tc, p->offsets);
  CuAssertIntEquals(tc, 2, p->used);
  CuAssertTrue(tc, p->allocated > 0);
  CuAssertPtrEquals(tc, p->offsets + 1, offset);
  CuAssertIntEquals(tc, FT_OFFSET, p->offsets[0].type);
  CuAssertIntEquals(tc, 0, p->offsets[0].holding_seg);
  CuAssertIntEquals(tc, 80, p->offsets[0].holding_offset);
  CuAssertIntEquals(tc, 3, p->offsets[0].u.addressed_segno);
  CuAssertIntEquals(tc, FT_OFFSET, p->offsets[1].type);
  CuAssertIntEquals(tc, 1, p->offsets[1].holding_seg);
  CuAssertIntEquals(tc, 0x1234, p->offsets[1].holding_offset);
  CuAssertIntEquals(tc, 1, p->offsets[1].u.addressed_segno);

  CuAssertIntEquals(tc, 2, fixups_count(p));
  CuAssertPtrEquals(tc, p->offsets + 0, fixup(p, 0));
  CuAssertPtrEquals(tc, p->offsets + 1, fixup(p, 1));

  delete_fixups(p);
}

static void test_insert_externals(CuTest* tc) {
  FIXUPS* ext = new_fixups();

  CuAssertIntEquals(tc, 0, fixups_count(ext));

  int i = add_external_fixup(ext, 3, 0x1030, 4, 7, FALSE);

  CuAssertIntEquals(tc, 0, i);

  CuAssertPtrNotNull(tc, ext->offsets);
  CuAssertIntEquals(tc, 1, ext->used);
  CuAssertTrue(tc, ext->allocated >= 1);

  CuAssertIntEquals(tc, FT_EXTERNAL, ext->offsets[0].type);
  CuAssertIntEquals(tc, 3, ext->offsets[0].holding_seg);
  CuAssertIntEquals(tc, 0x1030, ext->offsets[0].holding_offset);
  CuAssertIntEquals(tc, 4, ext->offsets[0].holding_len);
  CuAssertIntEquals(tc, 7, ext->offsets[0].u.ext.id);
  CuAssertIntEquals(tc, FALSE, ext->offsets[0].u.ext.jump);
  
  CuAssertTrue(tc, fixup(ext, 0) == ext->offsets);
  CuAssertIntEquals(tc, 1, fixups_count(ext));

  delete_fixups(ext);
}

static void test_append_offsets(CuTest* tc) {
  FIXUPS* dest = new_fixups();
  FIXUPS* src = new_fixups();

  append_fixups(dest, src);
  CuAssertIntEquals(tc, 0, dest->used);
  CuAssertIntEquals(tc, 0, src->used);

  // add_global_offset_info(info, holding_seg, holding_offset, holding_len, addressed_seg)

  add_offset_fixup(src, 0, 0x1000, 2, 3);
  add_offset_fixup(src, 1, 0, 1, 2);

  append_fixups(dest, src);
  CuAssertIntEquals(tc, 2, dest->used);
  CuAssertIntEquals(tc, 2, src->used);

  CuAssertIntEquals(tc, 0, dest->offsets[0].holding_seg);
  CuAssertIntEquals(tc, 0x1000, dest->offsets[0].holding_offset);
  CuAssertIntEquals(tc, 2, dest->offsets[0].holding_len);
  CuAssertIntEquals(tc, 3, dest->offsets[0].u.addressed_segno);

  CuAssertIntEquals(tc, 1, dest->offsets[1].holding_seg);
  CuAssertIntEquals(tc, 0, dest->offsets[1].holding_offset);
  CuAssertIntEquals(tc, 1, dest->offsets[1].holding_len);
  CuAssertIntEquals(tc, 2, dest->offsets[1].u.addressed_segno);

  delete_fixups(src);
  src = new_fixups();
  add_offset_fixup(src, 4, 0xDEAD, 2, 0);

  append_fixups(dest, src);
  CuAssertIntEquals(tc, 3, dest->used);
  CuAssertIntEquals(tc, 1, src->used);

  CuAssertIntEquals(tc, 0, dest->offsets[0].holding_seg);
  CuAssertIntEquals(tc, 0x1000, dest->offsets[0].holding_offset);
  CuAssertIntEquals(tc, 2, dest->offsets[0].holding_len);
  CuAssertIntEquals(tc, 3, dest->offsets[0].u.addressed_segno);

  CuAssertIntEquals(tc, 1, dest->offsets[1].holding_seg);
  CuAssertIntEquals(tc, 0, dest->offsets[1].holding_offset);
  CuAssertIntEquals(tc, 1, dest->offsets[1].holding_len);
  CuAssertIntEquals(tc, 2, dest->offsets[1].u.addressed_segno);

  CuAssertIntEquals(tc, 4, dest->offsets[2].holding_seg);
  CuAssertIntEquals(tc, 0xDEAD, dest->offsets[2].holding_offset);
  CuAssertIntEquals(tc, 2, dest->offsets[2].holding_len);
  CuAssertIntEquals(tc, 0, dest->offsets[2].u.addressed_segno);

  delete_fixups(src);
  delete_fixups(dest);
}

static void test_append_externals(CuTest* tc) {
  FIXUPS* main = new_fixups();
  FIXUPS* sub = new_fixups();

  add_external_fixup(main, 0, 10, 2, 1, FALSE);
  add_external_fixup(main, 1, 20, 2, 7, FALSE);

  add_external_fixup(sub, 0, 30, 4, 3, FALSE);
  add_external_fixup(sub, 2, 50, 4, 3, FALSE);

  append_fixups(main, sub);

  CuAssertIntEquals(tc, 4, main->used);

  CuAssertIntEquals(tc, 10, main->offsets[0].holding_offset);
  CuAssertIntEquals(tc, 20, main->offsets[1].holding_offset);
  CuAssertIntEquals(tc, 30, main->offsets[2].holding_offset);
  CuAssertIntEquals(tc, 50, main->offsets[3].holding_offset);

  delete_fixups(sub);
  delete_fixups(main);
}

CuSuite* offset_info_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_fixups);
  SUITE_ADD_TEST(suite, test_add_offset_info);
  SUITE_ADD_TEST(suite, test_insert_externals);
  SUITE_ADD_TEST(suite, test_append_offsets);
  SUITE_ADD_TEST(suite, test_append_externals);
  return suite;
}

#endif // UNIT_TEST