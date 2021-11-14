// Basic Linker
// Copyright (c) 2021 Nigel Perks
// Resolve fixups.

#include <assert.h>
#include "resolve.h"

static unsigned report_undefined_symbols(SYMTAB*);
static BOOL resolve_external(unsigned ext_index, const FIXUP*, SYMTAB*, SEGMENT_LIST*, int verbose);
static BOOL resolve_group_absolute_jump(unsigned fixup_index, const FIXUP*, SEGMENT_LIST*, int verbose);

void resolve_fixups(SEGMENTED* segs, int verbose) {
  assert(segs != NULL);

  if (verbose)
    puts("Resolve fixups");

  unsigned errors = report_undefined_symbols(segs->st);
  if (errors)
    fatal("Link errors: %u\n", errors);

  for (unsigned i = 0; i < fixups_count(segs->fixups); i++) {
    const FIXUP* fix = fixup(segs->fixups, i);
    switch (fix->type) {
      case FT_EXTERNAL:
        if (!resolve_external(i, fix, segs->st, segs->segs, verbose))
          errors++;
        break;
      case FT_GROUP_ABSOLUTE_JUMP:
        if (!resolve_group_absolute_jump(i, fix, segs->segs, verbose))
          errors++;
        break;
    }
  }
  if (errors)
    fatal("Link errors: %u\n", errors);
}

static unsigned report_undefined_symbols(SYMTAB* st) {
  unsigned errors = 0;
  for (SYMBOL_ID i = 0; i < sym_count(st); i++) {
    if (!sym_defined(st, i)) {
      fprintf(stderr, "Unresolved external: %s\n", sym_name(st, i));
      errors++;
    }
  }
  return errors;
}

static BOOL resolve_external(unsigned i, const FIXUP* e, SYMTAB* st, SEGMENT_LIST* segs, int verbose) {
  assert(e != NULL);
  assert(e->type == FT_EXTERNAL);
  assert(st != NULL);
  assert(segs != NULL);

  if (verbose >= 3)
    printf("EXTUSE %u: in seg %u at 0x%04x (%u bytes): symbol %d: %s: value 0x%04x\n",
        i,
        (unsigned) e->holding_seg, (unsigned) e->holding_offset, (unsigned) e->holding_len,
        (int) e->u.ext.id, sym_name(st, e->u.ext.id), (unsigned) sym_offset(st, e->u.ext.id));

  if (e->holding_len != 2) {
    fprintf(stderr, "External offset is not of WORD length: %s\n", sym_name(st, e->u.ext.id));
    return FALSE;
  }

  SEGMENT* seg = get_segment(segs, e->holding_seg);
  if (seg->hi < 2 || e->holding_offset > seg->hi - 2) {
    fprintf(stderr, "External reference offset beyond segment: %s\n", sym_name(st, e->u.ext.id));
    return FALSE;
  }

  WORD w = read_word_le(seg->data + e->holding_offset);
  if (w) {
    fprintf(stderr, "Location of external reference does not hold 0: seg %d, offset 0x%04x, value 0x%04x\n",
        (int) e->holding_seg, (unsigned) e->holding_offset, (unsigned) w);
    return FALSE;
  }

  if (e->u.ext.jump) {
    if (sym_seg(st, e->u.ext.id) != e->holding_seg) {
      fprintf(stderr, "Relative jump inter-segment fixup: %s\n", sym_name(st, e->u.ext.id));
      return FALSE;
    }

    DWORD eoi = e->holding_offset + e->holding_len;
    long disp = (long)sym_offset(st, e->u.ext.id) - (long)eoi;
    WORD val = (WORD) disp;
    if (verbose >= 3)
      printf("EXTUSE %u: displacement from 0x%04x to symbol 0x%04x = %ld => 0x%04x\n",
           i, (unsigned)eoi, (unsigned)sym_offset(st, e->u.ext.id), disp, (unsigned)val);
    write_word_le(seg->data + e->holding_offset, val);
  }
  else {
    WORD val = (WORD) sym_offset(st, e->u.ext.id);
    if (verbose >= 3)
      printf("EXTUSE %u: symbol 0x%04x\n", i, (unsigned) val);
    write_word_le(seg->data + e->holding_offset, val);
  }

  return TRUE;
}

static BOOL resolve_group_absolute_jump(unsigned j, const FIXUP* fix, SEGMENT_LIST* segs, int verbose) {
  assert(fix->type == FT_GROUP_ABSOLUTE_JUMP);

  // Work out jump displacement to the destination offset value within the group.
  SEGMENT* holding_seg = get_segment(segs, fix->holding_seg);
  WORD target = read_word_le(seg_data(holding_seg) + fix->holding_offset);
  long disp = (long)target - (long)(fix->holding_offset + fix->holding_len);
  if (disp <= -10000L || disp >= 10000L) {
    fprintf(stderr, "displacement to group absolute offset is out of 16-bit range\n");
    return FALSE;
  }
  WORD disp_code = (WORD) disp;
  if (verbose >= 3)
    printf("FIXUP %u: group absolute jump\n", j);
  write_word_le(seg_data(holding_seg) + fix->holding_offset, disp_code);
  return TRUE;
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_report_undefined_symbols(CuTest* tc) {
  SYMTAB* st = new_symbol_table(CASE_INSENSITIVE);

  sym_insert_extern(st, "AAA", 0);
  sym_insert_public(st, "BBB", 0, 0);
  sym_insert_extern(st, "CCC", 1);
  sym_insert_public(st, "BBB", 1, 0x100);

  unsigned errors = report_undefined_symbols(st);
  CuAssertIntEquals(tc, 2, errors);

  delete_symbol_table(st);
}

static void test_resolve_external(CuTest* tc) {
  FIXUPS* ext = new_fixups();
  SYMTAB* st = new_symbol_table(CASE_INSENSITIVE);
  SEGMENT_LIST* segs = new_segment_list(CASE_INSENSITIVE);

  SEGNO s0 = add_segment(segs, "SEG0", FALSE, FALSE, NO_GROUP);
  SEGMENT* seg0 = get_segment(segs, s0);
  static const BYTE DATA0[] = { 0xef, 0x11, 0x3f, 0x42, 0x99, 0x99, 0xfa, 0x00, 0x00, 0xce, 0xBE, 0x00, 0x00, 0xCD, 0xEF };
  emit_segment_data(seg0, DATA0, sizeof DATA0);
  CuAssertIntEquals(tc, sizeof DATA0, seg0->hi);

  SEGNO s1 = add_segment(segs, "SEG1", FALSE, FALSE, NO_GROUP);

  const int verbose = 3;
  BOOL succ;

  // Inter-segment data fixup
  int data0_sym = sym_insert_public(st, "AAA", s0, 0x1234);
  int ext_interseg_data = add_external_fixup(ext, s1, 0x08, 2, data0_sym, FALSE);
  succ = resolve_external(ext_interseg_data, fixup(ext, ext_interseg_data), st, segs, verbose);
  CuAssertIntEquals(tc, FALSE, succ);

  // Inter-segment jump fixup
  int jump0_sym = sym_insert_public(st, "BBB", s0, 0x567d);
  int ext_interseg_jump = add_external_fixup(ext, s1, 0x10, 2, jump0_sym, TRUE);
  succ = resolve_external(ext_interseg_jump, fixup(ext, ext_interseg_jump), st, segs, verbose);
  CuAssertIntEquals(tc, FALSE, succ);

  // Offset length != 2
  int ext_bad_length = add_external_fixup(ext, s0, 0x04, 4, data0_sym, FALSE);
  succ = resolve_external(ext_bad_length, fixup(ext, ext_bad_length), st, segs, verbose);
  CuAssertIntEquals(tc, FALSE, succ);

  // Offset beyond segment
  int ext_beyond = add_external_fixup(ext, s0, sizeof DATA0 - 1, 2, data0_sym, FALSE);
  succ = resolve_external(ext_beyond, fixup(ext, ext_beyond), st, segs, verbose);
  CuAssertIntEquals(tc, FALSE, succ);

  // Data reference contents are not initially zero
  int ext_data_bad_contents = add_external_fixup(ext, s0, 8, 2, data0_sym, FALSE);
  succ = resolve_external(ext_data_bad_contents, fixup(ext, ext_data_bad_contents), st, segs, verbose);
  CuAssertIntEquals(tc, FALSE, succ);

  // Jump reference contents are not initially zero
  int ext_jump_bad_contents = add_external_fixup(ext, s0, 8, 2, jump0_sym, TRUE);
  succ = resolve_external(ext_jump_bad_contents, fixup(ext, ext_jump_bad_contents), st, segs, verbose);
  CuAssertIntEquals(tc, FALSE, succ);

  // Fixup data reference
  int ext_data_good = add_external_fixup(ext, s0, 7, 2, data0_sym, FALSE);
  succ = resolve_external(ext_data_good, fixup(ext, ext_data_good), st, segs, verbose);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, 0x12, seg0->data[8]);
  CuAssertIntEquals(tc, 0x34, seg0->data[7]);

  // Fixup jump reference: displacement from end of instruction (end of offset location) to symbol
  // From 13 to 0x567d is 0x5670
  int ext_jump_good = add_external_fixup(ext, s0, 11, 2, jump0_sym, TRUE);
  succ = resolve_external(ext_jump_good, fixup(ext, ext_jump_good), st, segs, verbose);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, 0x56, seg0->data[12]);
  CuAssertIntEquals(tc, 0x70, seg0->data[11]);

  delete_segment_list(segs);
  delete_symbol_table(st);
  delete_fixups(ext);
}

static void test_resolve_empty(CuTest* tc) {
  SEGMENTED* segs = new_segmented("PROGGY", CASE_SENSITIVE);

  resolve_fixups(segs, 0);

  delete_segmented(segs);
}

CuSuite* resolve_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_report_undefined_symbols);
  SUITE_ADD_TEST(suite, test_resolve_external);
  SUITE_ADD_TEST(suite, test_resolve_empty);
  return suite;
}

#endif // UNIT_TEST