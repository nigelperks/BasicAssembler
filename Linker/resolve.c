// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// Resolve fixups.

#include <assert.h>
#include "resolve.h"

static unsigned report_undefined_symbols(SYMTAB*);
static BOOL resolve_external(unsigned ext_index, const FIXUP*, SYMTAB*, SEGMENT_LIST*, int verbose);
static BOOL resolve_group_absolute_jump(unsigned fixup_index, const FIXUP*, SEGMENT_LIST*, int verbose);

// Check that all external symbols have been resolved (defined).
// Resolve the fixups that require physical segments to have their final size
// but can be done at link time: external symbol values, absolute jump offset in group.
// (Run-time physical segment addresses can only be filled in at load time.)
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
        // Fill in the final value of the symbol or,
        // for a jump, its PC-relative displacement.
        if (!resolve_external(i, fix, segs->st, segs->segs, verbose))
          errors++;
        break;
      case FT_GROUP_ABSOLUTE_JUMP:
        // Convert absolute jump address within a group, e.g. CS:1234h,
        // into PC-relative displacement.
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

// Resolve an external fixup.
// Fill in the value of the symbol or, for a jump, its PC-relative displacement.
static BOOL resolve_external(unsigned i, const FIXUP* e, SYMTAB* st, SEGMENT_LIST* segs, int verbose) {
  assert(e != NULL);
  assert(e->type == FT_EXTERNAL);
  assert(st != NULL);
  assert(segs != NULL);

  if (verbose >= 3)
    printf("EXTUSE %u: in seg %u at 0x%04x: symbol %d: %s: value 0x%04x\n",
        i,
        (unsigned) e->holding_seg, (unsigned) e->holding_offset,
        (int) e->u.ext.id, sym_name(st, e->u.ext.id), (unsigned) sym_offset(st, e->u.ext.id));

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
    // The stored displacement will be relative to the end of the instruction containing it.

    // This fixup is not for inter-segment jumps,
    // only for a 16-bit signed displacement within a segment.
    // TODO: check that inter-segment jumps are handled elsewhere.
    if (sym_seg(st, e->u.ext.id) != e->holding_seg) {
      fprintf(stderr, "Relative jump inter-segment fixup: %s\n", sym_name(st, e->u.ext.id));
      return FALSE;
    }

    DWORD instr_end = e->holding_offset + 2; // 16-bit displacement at end of instruction
    long disp = (long)sym_offset(st, e->u.ext.id) - (long)instr_end;
    WORD val = (WORD) disp;
    if (verbose >= 3)
      printf("EXTUSE %u: displacement from 0x%04x to symbol 0x%04x = %ld => 0x%04x\n",
           i, (unsigned)instr_end, (unsigned)sym_offset(st, e->u.ext.id), disp, (unsigned)val);
    write_word_le(seg->data + e->holding_offset, val);
  }
  else {
    // The stored offset is relative to start of segment, not PC-relative.
    WORD val = (WORD) sym_offset(st, e->u.ext.id);
    if (verbose >= 3)
      printf("EXTUSE %u: symbol 0x%04x\n", i, (unsigned) val);
    write_word_le(seg->data + e->holding_offset, val);
  }

  return TRUE;
}

// An absolute jump address within a group's physical segment, e.g. CS:1234h,
// must be changed into a displacement relative to the end of the jump instruction.
static BOOL resolve_group_absolute_jump(unsigned j, const FIXUP* fix, SEGMENT_LIST* segs, int verbose) {
  assert(fix->type == FT_GROUP_ABSOLUTE_JUMP);

  // Work out jump displacement to the destination offset value within the group.
  SEGMENT* holding_seg = get_segment(segs, fix->holding_seg);
  WORD target = read_word_le(seg_data(holding_seg) + fix->holding_offset);
  long disp = (long)target - (long)(fix->holding_offset + 2);
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
  write_segment(seg0, 0, DATA0, sizeof DATA0);
  CuAssertIntEquals(tc, sizeof DATA0, seg0->hi);

  SEGNO s1 = add_segment(segs, "SEG1", FALSE, FALSE, NO_GROUP);

  const int verbose = 3;
  BOOL succ;

  // Inter-segment data fixup
  int data0_sym = sym_insert_public(st, "AAA", s0, 0x1234);
  int ext_interseg_data = add_external_fixup(ext, s1, 0x08, data0_sym, FALSE);
  succ = resolve_external(ext_interseg_data, fixup(ext, ext_interseg_data), st, segs, verbose);
  CuAssertIntEquals(tc, FALSE, succ);

  // Inter-segment jump fixup
  int jump0_sym = sym_insert_public(st, "BBB", s0, 0x567d);
  int ext_interseg_jump = add_external_fixup(ext, s1, 0x10, jump0_sym, TRUE);
  succ = resolve_external(ext_interseg_jump, fixup(ext, ext_interseg_jump), st, segs, verbose);
  CuAssertIntEquals(tc, FALSE, succ);

  // Offset beyond segment
  int ext_beyond = add_external_fixup(ext, s0, sizeof DATA0 - 1, data0_sym, FALSE);
  succ = resolve_external(ext_beyond, fixup(ext, ext_beyond), st, segs, verbose);
  CuAssertIntEquals(tc, FALSE, succ);

  // Data reference contents are not initially zero
  int ext_data_bad_contents = add_external_fixup(ext, s0, 8, data0_sym, FALSE);
  succ = resolve_external(ext_data_bad_contents, fixup(ext, ext_data_bad_contents), st, segs, verbose);
  CuAssertIntEquals(tc, FALSE, succ);

  // Jump reference contents are not initially zero
  int ext_jump_bad_contents = add_external_fixup(ext, s0, 8, jump0_sym, TRUE);
  succ = resolve_external(ext_jump_bad_contents, fixup(ext, ext_jump_bad_contents), st, segs, verbose);
  CuAssertIntEquals(tc, FALSE, succ);

  // Fixup data reference
  int ext_data_good = add_external_fixup(ext, s0, 7, data0_sym, FALSE);
  succ = resolve_external(ext_data_good, fixup(ext, ext_data_good), st, segs, verbose);
  CuAssertIntEquals(tc, TRUE, succ);
  CuAssertIntEquals(tc, 0x12, seg0->data[8]);
  CuAssertIntEquals(tc, 0x34, seg0->data[7]);

  // Fixup jump reference: displacement from end of instruction (end of offset location) to symbol
  // From 13 to 0x567d is 0x5670
  int ext_jump_good = add_external_fixup(ext, s0, 11, jump0_sym, TRUE);
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