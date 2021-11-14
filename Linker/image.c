// Basic Linker
// Copyright (c) 2021 Nigel Perks
// Build program image.

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "image.h"


IMAGE* new_image(void) {
  IMAGE* p = emalloc(sizeof *p);
  p->data = NULL;
  p->allocated = 0;
  p->lo = 0;
  p->hi = 0;
  p->start.set = FALSE;
  p->stack.set = FALSE;
  return p;
}

void delete_image(IMAGE* image) {
  if (image) {
    free(image->data);
    free(image);
  }
}

#define MAX_IMAGE (640 * 1024UL) // should be enough for anyone
#define IMAGE_ALLOCATION_UNIT (16 * 1024)

static void write_image(IMAGE* image, size_t pos, const BYTE* data, size_t size) {
  assert(image != NULL);
  assert(image->lo <= image->hi);
  assert(image->hi <= MAX_IMAGE);
  assert(data != NULL);
  assert(size > 0);

  if (pos > MAX_IMAGE || MAX_IMAGE - pos < size)
    fatal("exceeding maximum image size\n");

  if (image->data == NULL || pos < image->lo)
    image->lo = pos;

  if (pos + size > image->allocated) {
    size_t allocate = pos + size;
    if (allocate % IMAGE_ALLOCATION_UNIT)
      allocate += (IMAGE_ALLOCATION_UNIT - allocate % IMAGE_ALLOCATION_UNIT);
    assert(allocate % IMAGE_ALLOCATION_UNIT == 0);
    assert(allocate >= pos + size);
    BYTE* data = ecalloc(allocate, 1);
    if (image->data) {
      memcpy(data, image->data, image->hi);
      free(image->data);
    }
    image->data = data;
    image->allocated = allocate;
  }

  assert(image->data != NULL);
  memcpy(image->data + pos, data, size);
  image->hi = pos + size;
}

static void append_segment_to_image(IMAGE* image, const SEGMENT* seg) {
  assert(image != NULL);
  assert(seg != NULL);
  assert(seg->data != NULL);
  assert(seg->hi >= seg->lo);

  write_image(image, image->hi + seg->lo, seg->data + seg->lo, seg->hi - seg->lo);
}

static void pad_image_to_paragraph(IMAGE* image) {
  assert(image != NULL);

  if (image->hi % 16) {
    BYTE buf[16];
    memset(buf, 0, sizeof buf);
    write_image(image, image->hi, buf, 16 - image->hi % 16);
  }
}

static void set_start(IMAGE* image, const START* prog_start, const SEGMENT* start_seg) {
  assert(prog_start->offset < seg_hi(start_seg));
  if (image->hi >= 16 * (WORD)(-1))
    fatal("image start address is out of range\n");
  if (16 * (WORD)(-1) - image->hi < seg_hi(start_seg))
    fatal("image becomes too big for start\n");
  image->start.seg = (WORD) (image->hi / 16);
  image->start.offset = (WORD) prog_start->offset;
  image->start.set = TRUE;
}

static void set_stack(IMAGE* image, const STACK* prog_stack, const SEGMENT* seg) {
  assert(prog_stack->offset < seg_hi(seg));
  assert(seg_hi(seg) - prog_stack->offset <= prog_stack->size);
  assert(image->hi % 16 == 0);
  assert(prog_stack->offset % 16 == 0);

  if (image->hi >= 16 * (WORD)(-1))
    fatal("image start address is out of range\n");
  if (16 * (WORD)(-1) - image->hi < seg_hi(seg))
    fatal("image becomes too big for stack\n");
  image->stack.seg = (WORD) ((image->hi + prog_stack->offset) / 16);
  image->stack.size = prog_stack->size;
  image->stack.set = TRUE;
}

static void add_image_segment(IMAGE* image, SEGMENTED* prog, SEGNO segno, VECTOR* bases, int verbose) {
  SEGMENT* seg = get_segment(prog->segs, segno);

  if (verbose)
    printf("Add segment/group to image: %s\n", seg_name(seg));

  if (segment_has_data(seg)) {
    pad_image_to_paragraph(image);

    if (prog->start.segno == segno)
      set_start(image, &prog->start, seg);

    if (prog->stack.segno == segno)
      set_stack(image, &prog->stack, seg);

    bases->val[segno] = image->hi;

    append_segment_to_image(image, seg);
  }
}

static void resolve_segment_fixup(IMAGE* image, FIXUP* p, unsigned i, VECTOR* bases, int verbose) {
  if (verbose >= 3)
    printf("FIXUP %u: in seg %d at 0x%04x addressing seg %d\n",
        i, (int)p->holding_seg, (unsigned)p->holding_offset, (int)p->u.seg.addressed_segno);

  assert(p->holding_seg != NO_SEG && (size_t)p->holding_seg < bases->size);
  DWORD holding_base = bases->val[p->holding_seg];
  assert(holding_base % 16 == 0);
  DWORD holding_seg_addr = holding_base / 16;
  if (verbose >= 3)
    printf("FIXUP %u: holding seg addr 0x%04x\n", i, (unsigned)holding_seg_addr);
  p->u.seg.holding_seg_addr = (WORD)holding_seg_addr;

  assert(p->u.seg.addressed_segno != NO_SEG && (size_t)p->u.seg.addressed_segno < bases->size);
  DWORD addressed_base = bases->val[p->u.seg.addressed_segno] + p->u.seg.addressed_base;
  assert(addressed_base % 16 == 0);
  DWORD addressed_seg_addr = addressed_base / 16;
  if (verbose >= 3)
    printf("FIXUP %u: addressed seg addr 0x%04x\n", i, (unsigned)addressed_seg_addr);
  if (addressed_seg_addr > (WORD)(-1))
    fatal("addressed segment is out of 16-bit range\n");
  assert(p->holding_len == 2);
  DWORD image_addr = holding_base + p->holding_offset;
  assert(image->hi > image_addr && image->hi - image_addr >= p->holding_len);
  write_word_le(image->data + image_addr, (WORD)addressed_seg_addr);
}

static void resolve_group_fixup(IMAGE* image, FIXUP* p, unsigned i, VECTOR* bases, GROUP_LIST* groups, int verbose) {
  if (verbose >= 3)
    printf("FIXUP %u: in seg %d at 0x%04x addressing group %d\n",
        i, (int)p->holding_seg, (unsigned)p->holding_offset, (int)p->u.group.addressed_groupno);

  assert(p->holding_seg != NO_SEG && (size_t)p->holding_seg < bases->size);
  DWORD holding_base = bases->val[p->holding_seg];
  assert(holding_base % 16 == 0);
  DWORD holding_seg_addr = holding_base / 16;
  if (verbose >= 3)
    printf("FIXUP %u: holding seg addr 0x%04x\n", i, (unsigned)holding_seg_addr);
  p->u.group.holding_seg_addr = (WORD)holding_seg_addr;

  GROUPNO groupno = p->u.group.addressed_groupno;
  assert(groupno != NO_GROUP);
  SEGNO segno = group_main_segno(groups, groupno);
  if (segno < 0 || (unsigned)segno >= bases->size)
    fatal("group has no valid segment: %d: %s\n", (int)groupno, group_name(groups, groupno));
  DWORD addressed_base = bases->val[segno];
  assert(addressed_base % 16 == 0);
  DWORD addressed_seg_addr = addressed_base / 16;
  if (verbose >= 3)
    printf("FIXUP %u: addressed seg addr 0x%04x\n", i, (unsigned)addressed_seg_addr);
  if (addressed_seg_addr > (WORD)(-1))
    fatal("addressed segment is out of 16-bit range\n");
  assert(p->holding_len == 2);
  DWORD image_addr = holding_base + p->holding_offset;
  assert(image->hi > image_addr && image->hi - image_addr >= p->holding_len);
  write_word_le(image->data + image_addr, (WORD)addressed_seg_addr);
}

static void resolve_segment_fixups(IMAGE* image, FIXUPS* fixups, VECTOR* bases, GROUP_LIST* groups, int verbose) {
  assert(fixups != NULL);
  assert(bases != NULL);

  if (verbose)
    puts("Resolve segment fixups");

  if (fixups->offsets) {
    unsigned i = 0;
    for (FIXUP* p = fixups->offsets; p < fixups->offsets + fixups->used; p++, i++) {
      if (p->type == FT_SEGMENT)
        resolve_segment_fixup(image, p, i, bases, verbose);
      else if (p->type == FT_GROUP)
        resolve_group_fixup(image, p, i, bases, groups, verbose);
    }
  }
}

IMAGE* build_image(SEGMENTED* prog, int verbose) {
  if (verbose)
    puts("Build image");

  VECTOR* bases = new_vector(segment_list_count(prog->segs));

  SEGNO segno = first_proper_segment(prog->segs);
  if (segno == NO_SEG)
    fatal("no segments\n");

  if (prog->start.segno == NO_SEG)
    fatal("no start address\n");

  IMAGE* image = new_image();

  add_image_segment(image, prog, segno, bases, verbose);

  while ((segno = next_proper_segment(prog->segs, segno)) != NO_SEG)
    add_image_segment(image, prog, segno, bases, verbose);

  if (image->start.set == FALSE)
    fatal("no start address in program image\n");

  resolve_segment_fixups(image, prog->fixups, bases, prog->groups, verbose);

  delete_vector(bases);

  return image;
}

#ifdef UNIT_TEST

#include "cutest.h"

static void test_new_image(CuTest* tc) {
  IMAGE* image = new_image();

  CuAssertPtrEquals(tc, NULL, image->data);
  CuAssertIntEquals(tc, 0, image->allocated);
  CuAssertIntEquals(tc, 0, image->lo);
  CuAssertIntEquals(tc, 0, image->hi);

  delete_image(image);

  delete_image(NULL);
}

static void test_write_image(CuTest* tc) {
  IMAGE* image = new_image();
  BYTE* buf1 = emalloc(32);
  const size_t K = IMAGE_ALLOCATION_UNIT * 3/2;
  BYTE* buf2 = emalloc(K);

  memset(buf1, '*', 23);
  write_image(image, 32, buf1, 23);
  CuAssertPtrNotNull(tc, image->data);
  CuAssertIntEquals(tc, IMAGE_ALLOCATION_UNIT, image->allocated);
  CuAssertIntEquals(tc, 32, image->lo);
  CuAssertIntEquals(tc, 55, image->hi);
  CuAssertTrue(tc, memcmp(image->data + 32, buf1, 23) == 0);

  memset(buf2, '-', K);
  write_image(image, 16, buf2, K);
  CuAssertIntEquals(tc, 2 * IMAGE_ALLOCATION_UNIT, image->allocated);
  CuAssertIntEquals(tc, 16, image->lo);
  CuAssertIntEquals(tc, 16 + K, image->hi);
  CuAssertTrue(tc, memcmp(image->data + 16, buf2, K) == 0);

  write_image(image, image->hi, buf1, 23);
  CuAssertIntEquals(tc, 2 * IMAGE_ALLOCATION_UNIT, image->allocated);
  CuAssertIntEquals(tc, 16, image->lo);
  CuAssertIntEquals(tc, 16 + K + 23, image->hi);
  CuAssertTrue(tc, memcmp(image->data + 16, buf2, K) == 0);
  CuAssertTrue(tc, memcmp(image->data + 16 + K, buf1, 23) == 0);

  free(buf1);
  free(buf2);
  delete_image(image);
}

static void test_pad_image(CuTest* tc) {
  IMAGE* image = new_image();
  BYTE buf[16];

  pad_image_to_paragraph(image);
  CuAssertIntEquals(tc, 0, image->hi);

  write_image(image, 7, buf, 15);
  CuAssertIntEquals(tc, 22, image->hi);
  pad_image_to_paragraph(image);
  CuAssertIntEquals(tc, 32, image->hi);

  pad_image_to_paragraph(image);
  CuAssertIntEquals(tc, 32, image->hi);

  delete_image(image);
}

static void test_append_segment(CuTest* tc) {
  IMAGE* image = new_image();
  SEGMENT* seg = new_segment("MYSEG", FALSE, FALSE, NO_GROUP);
  BYTE buf[56];

  seg->pc = 0x80;
  emit_segment_data(seg, buf, sizeof buf);

  append_segment_to_image(image, seg);

  CuAssertPtrNotNull(tc, image->data);
  CuAssertIntEquals(tc, IMAGE_ALLOCATION_UNIT, image->allocated);
  CuAssertIntEquals(tc, 0x80, image->lo);
  CuAssertIntEquals(tc, 0x80 + sizeof buf, image->hi);

  delete_image(image);
}

CuSuite* image_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_image);
  SUITE_ADD_TEST(suite, test_write_image);
  SUITE_ADD_TEST(suite, test_pad_image);
  SUITE_ADD_TEST(suite, test_append_segment);
  return suite;
}

#endif // UNIT_TEST
