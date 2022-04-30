// Basic Linker
// Copyright (c) 2021-2 Nigel Perks
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
  p->space = 0;
  return p;
}

void delete_image(IMAGE* image) {
  if (image) {
    efree(image->data);
    efree(image);
  }
}

#define MAX_IMAGE (640 * 1024UL) // should be enough for anyone
#define IMAGE_ALLOCATION_UNIT (16 * 1024)

static void ensure_allocated(IMAGE* image, size_t size) {
  assert(image != NULL);
  assert(image->lo <= image->hi);
  assert(image->hi <= MAX_IMAGE);

  if (image->space)
    fatal("internal error: allocating image data: image has uninitialized space\n");

  if (size > MAX_IMAGE)
    fatal("exceeding maximum image size\n");

  if (size > image->allocated) {
    if (size % IMAGE_ALLOCATION_UNIT)
      size += (IMAGE_ALLOCATION_UNIT - size % IMAGE_ALLOCATION_UNIT);
    assert(size % IMAGE_ALLOCATION_UNIT == 0);
    BYTE* data = ecalloc(size, 1);
    if (image->data) {
      memcpy(data, image->data, image->hi);
      efree(image->data);
    }
    image->data = data;
    image->allocated = size;
  }
}

static void write_image(IMAGE* image, size_t pos, const BYTE* data, size_t size) {
  assert(image != NULL);
  assert(image->lo <= image->hi);
  assert(image->hi <= MAX_IMAGE);

  if (pos > MAX_IMAGE || MAX_IMAGE - pos < size)
    fatal("exceeding maximum image size\n");

  if (size == 0)
    return;

  ensure_allocated(image, pos + size);
  assert(image->data != NULL);
  memcpy(image->data + pos, data, size);

  if (image->hi == 0 || pos < image->lo)
    image->lo = pos;

  if (pos + size > image->hi)
    image->hi = pos + size;
}

// append initialized data area (hi), not unintialized space
static void append_segment_data_to_image(IMAGE* image, const SEGMENT* seg) {
  assert(image != NULL);
  assert(seg != NULL);
  assert(seg->data != NULL);
  assert(seg->hi >= seg->lo);

  write_image(image, image->hi + seg->lo, seg->data + seg->lo, seg->hi - seg->lo);
}

// pad initialized data area (hi), not unintialized space
static void pad_image_data(IMAGE* image, unsigned p2align) {
  assert(image != NULL);

  DWORD new_hi = p2aligned(image->hi, p2align);
  ensure_allocated(image, new_hi);
  assert(new_hi >= image->hi);
  if (new_hi) {
    assert(image->data != NULL);
    memset(image->data + image->hi, 0, new_hi - image->hi);
    image->hi = new_hi;
  }
}

#define ADDRESS_SPACE (1024ul * 1024)

// set_start:
// called when adding to the image the program segment containing the start address:
// initial IP = offset of start address in that program segment
//            = prog_start->offset
// initial CS = physical segment address (paragraph) of that program segment in the image
//            = paragraph number of top of image before adding the segment
//            = image->hi / 16
// So this function does not use prog_start->segno.
// That is a program segment number, not a physical segment for the image initial CS.
// That segment number is used when deciding to call this function, not for writing the image.
static void set_start(IMAGE* image, const START* prog_start, const SEGMENT* start_seg) {
  assert(prog_start->offset < seg_hi(start_seg));
  if (image->hi >= ADDRESS_SPACE)
    fatal("image start address is out of range\n");
  if (ADDRESS_SPACE - image->hi < seg_hi(start_seg))
    fatal("image becomes too big for start\n");
  image->start.seg = (WORD) (image->hi / 16);
  image->start.offset = (WORD) prog_start->offset;
  image->start.set = TRUE;
}

// initial SP = stack size
//            = prog_stack->size
// initial SS = physical segment address (paragraph) of base of stack
//            = paragraph number of top of image before adding the segment
//                  plus offset of stack within the segment
//            = (image->hi + prog_stack->offset) / 16
static void set_stack(IMAGE_STACK* image_stack, DWORD image_address, const STACK* prog_stack) {
  if (image_address % 16)
    fatal("stack image address is not paragraph-aligned\n");
  if (prog_stack->offset % 16)
    fatal("stack offset is not paragraph-aligned\n");
  image_stack->seg = (WORD) ((image_address + prog_stack->offset) / 16);
  image_stack->size = prog_stack->size;
  image_stack->set = TRUE;
}

static void add_image_segment(IMAGE* image, const SEGMENTED* prog, SEGNO segno, VECTOR* bases, int verbose) {
  SEGMENT* seg = get_segment(prog->segs, segno);

  if (verbose)
    printf("Add segment/group to image: %s\n", seg_name(seg));

  // In my opinion a segment placed in image begins at offset 0.
  // So it must be paragraph-aligned. A segment address is a paragraph address.
  if (image->hi > 0 && seg_p2align(seg) < 4)
    fatal("cannot place segment in image: not paragraph-aligned: %s\n", seg_name(seg));

  if (segment_has_data(seg)) {
    if (image->space)
      fatal("cannot place initialized segment/group after uninitialized space\n");

    if (verbose >= 3)
      printf("Segment '%s' has initialized data: pad image data to p2align %u\n", seg_name(seg), (unsigned) seg_p2align(seg));
    pad_image_data(image, seg_p2align(seg));
    if (verbose >= 3)
      printf("Segment '%s' hi==0x%04x\n", seg_name(seg), (unsigned) seg_hi(seg));

    if (prog->start.segno == segno)
      set_start(image, &prog->start, seg);

    if (prog->stack.segno == segno)
      set_stack(&image->stack, image->hi, &prog->stack);

    bases->val[segno] = image->hi;

    append_segment_data_to_image(image, seg);

    if (seg_space(seg)) {
      assert(image->space == 0);
      image->space = seg_space(seg); // already includes padding space on top of segment hi
    }
  }
  else if (seg_space(seg)) {
    const DWORD top = image->hi + image->space;
    const DWORD base = p2aligned(top, seg_p2align(seg));
    image->space += (base - top);
    assert(image->hi + image->space == base);

    if (prog->start.segno == segno)
      fatal("start segment is uninitialized data\n");

    if (prog->stack.segno == segno)
      set_stack(&image->stack, base, &prog->stack);

    bases->val[segno] = base;

    image->space += seg_space(seg);
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
  DWORD image_addr = holding_base + p->holding_offset;
  assert(image->hi > image_addr && image->hi - image_addr >= 2);
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
  DWORD image_addr = holding_base + p->holding_offset;
  assert(image->hi > image_addr && image->hi - image_addr >= 2);
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

static void check_start(const SEGMENTED* prog);

IMAGE* build_image(const SEGMENTED* prog, int verbose) {
  if (verbose)
    puts("Build image");

  VECTOR* bases = new_vector(segment_list_count(prog->segs));

  SEGNO segno = first_proper_segment(prog->segs);
  if (segno == NO_SEG)
    fatal("no segments\n");

  check_start(prog);

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

static void check_start(const SEGMENTED* prog) {
  if (prog->start.segno == NO_SEG)
    fatal("no start address\n");

  const SEGMENT* seg = get_segment(prog->segs, prog->start.segno);
  if (seg == NULL || prog->start.offset >= seg_hi(seg))
    fatal("the start offset is outside the start segment\n");
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_new_image(CuTest* tc) {
  IMAGE* image = new_image();

  CuAssertPtrEquals(tc, NULL, image->data);
  CuAssertIntEquals(tc, 0, image->allocated);
  CuAssertIntEquals(tc, 0, image->lo);
  CuAssertIntEquals(tc, 0, image->hi);
  CuAssertIntEquals(tc, 0, image->space);

  delete_image(image);

  delete_image(NULL);
}

static void test_ensure_allocated(CuTest* tc) {
  IMAGE* image = new_image();

  ensure_allocated(image, 0);
  CuAssertIntEquals(tc, 0, image->allocated);
  CuAssertPtrEquals(tc, NULL, image->data);

  ensure_allocated(image, 10000);
  CuAssertIntEquals(tc, IMAGE_ALLOCATION_UNIT, image->allocated);
  CuAssertPtrNotNull(tc, image->data);
  CuAssertTrue(tc, zero(image->data, image->allocated));

  ensure_allocated(image, 8000);
  CuAssertIntEquals(tc, IMAGE_ALLOCATION_UNIT, image->allocated);
  CuAssertPtrNotNull(tc, image->data);
  CuAssertTrue(tc, zero(image->data, image->allocated));

  ensure_allocated(image, 50000);
  CuAssertIntEquals(tc, 4 * IMAGE_ALLOCATION_UNIT, image->allocated);
  CuAssertPtrNotNull(tc, image->data);
  CuAssertTrue(tc, zero(image->data, image->allocated));

  delete_image(image);
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

  efree(buf1);
  efree(buf2);
  delete_image(image);
}

static void test_pad_image_data(CuTest* tc) {
  IMAGE* image = new_image();
  BYTE buf[16];

  pad_image_data(image, 4);
  CuAssertIntEquals(tc, 0, image->hi);

  write_image(image, 7, buf, 15);
  CuAssertIntEquals(tc, 22, image->hi);
  pad_image_data(image, 4);
  CuAssertIntEquals(tc, 32, image->hi);

  pad_image_data(image, 4);
  CuAssertIntEquals(tc, 32, image->hi);

  image->hi = 33;
  pad_image_data(image, 5);
  CuAssertIntEquals(tc, 64, image->hi);

  image->hi = 65;
  pad_image_data(image, 3);
  CuAssertIntEquals(tc, 72, image->hi);

  delete_image(image);
}

static void test_append_segment(CuTest* tc) {
  IMAGE* image = new_image();
  SEGMENT* seg = new_segment("MYSEG", FALSE, FALSE, NO_GROUP);
  BYTE buf[56];

  write_segment(seg, 0x80, buf, sizeof buf);

  append_segment_data_to_image(image, seg);

  CuAssertPtrNotNull(tc, image->data);
  CuAssertIntEquals(tc, IMAGE_ALLOCATION_UNIT, image->allocated);
  CuAssertIntEquals(tc, 0x80, image->lo);
  CuAssertIntEquals(tc, 0x80 + sizeof buf, image->hi);

  delete_segment(seg);
  delete_image(image);
}

CuSuite* image_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_image);
  SUITE_ADD_TEST(suite, test_ensure_allocated);
  SUITE_ADD_TEST(suite, test_write_image);
  SUITE_ADD_TEST(suite, test_pad_image_data);
  SUITE_ADD_TEST(suite, test_append_segment);
  return suite;
}

#endif // UNIT_TEST
