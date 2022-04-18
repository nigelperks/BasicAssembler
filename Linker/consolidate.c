// Basic Linker
// Copyright (c) 2021-2 Nigel Perks
// Consolidate segmented program into groups.

#include <stdlib.h>
#include <assert.h>
#include "consolidate.h"

static void build_group(SEGMENTED*, SEGNO first_segment, int verbose);

void consolidate_groups_and_stack(SEGMENTED* prog, int verbose) {
  assert(prog != NULL);
  assert(prog->stack.segno == NO_SEG);

  if (verbose)
    puts("Consolidate segments into groups and determine stack segment");

  for (SEGNO i = 0; i < segment_list_count(prog->segs); i++) {
    SEGMENT* seg = get_segment(prog->segs, i);

    if (seg != NULL && seg_stack(seg)) {
      if (prog->stack.segno != NO_SEG)
        fatal("multiple stack segments\n");
      if (seg_hi(seg) > (WORD)(-1))
        fatal("stack segment too big\n");
      prog->stack.segno = i;
      prog->stack.offset = 0;
      prog->stack.size = (WORD) seg_hi(seg);
      if (verbose >= 2)
        printf("Set image stack segment: program segment %d: %s; offset 0x%04x, size 0x%04x\n",
            (int)prog->stack.segno, segment_name(prog->segs, prog->stack.segno), (unsigned)prog->stack.offset, (unsigned)prog->stack.size);
    }

    if (seg != NULL && seg_group(seg) != NO_GROUP)
        build_group(prog, i, verbose);
  }
}

static void join_segments(SEGMENTED*, SEGNO dest, SEGNO source, int verbose);

static void build_group(SEGMENTED* prog, SEGNO first_segno, int verbose) {
  assert(prog != NULL);
  assert(first_segno < segment_list_count(prog->segs));

  SEGMENT* first_seg = get_segment(prog->segs, first_segno);
  assert(first_seg != NULL);

  const GROUPNO groupno = seg_group(first_seg);
  assert(groupno != NO_GROUP);
  assert(groupno < group_list_count(prog->groups));

  if (verbose) {
    printf("Build group %d: %s\n", (int)groupno, group_name(prog->groups, groupno));
    printf("Initial segment in group: %d: %s\n", (int)first_segno, seg_name(first_seg));
  }

  set_group_main_segno(prog->groups, groupno, first_segno);

  for (SEGNO i = first_segno + 1; i < segment_list_count(prog->segs); i++) {
    SEGMENT* seg = get_segment(prog->segs, i);
    if (seg != NULL && segment_has_data(seg) && seg_group(seg) == groupno)
      join_segments(prog, first_segno, i, verbose);
  }
}

static void update_fixups(SEGMENTED* prog, SEGNO source, SEGNO dest, DWORD base, int verbose);

static void update_symbol_definitions_for_new_segment_number_and_base(
    SYMTAB* st, SEGNO source_segno, SEGNO dest_segno, DWORD base);

// Make two segments in the same segment list into one segment, appending source
// to destination. Update offsets into the source, to be into the destination,
// across all segments. Remove the source segment.
/*
  SEGMENT_LIST* segs;           // data, group membership
  GROUP_LIST* groups;           // group names
  GLOBAL_OFFSET_INFO* offsets;  // (holding_seg, holding_offset, holding_len, addressed_seg)
  SYMTAB* st;                   // (name, segno, offset, defined) -- IN FLUX!
  EXTERNALS* ext;               // (holding_seg, holding_offset, holding_len, id, jump-flag)
*/
static void join_segments(SEGMENTED* prog, SEGNO dest_segno, SEGNO source_segno, int verbose) {
  assert(prog != NULL);
  assert(source_segno < segment_list_count(prog->segs));
  assert(dest_segno < segment_list_count(prog->segs));

  SEGMENT* dest_seg = get_segment(prog->segs, dest_segno);
  SEGMENT* source_seg = get_segment(prog->segs, source_segno);

  assert(dest_seg != NULL);
  assert(source_seg != NULL);
  assert(segment_has_data(source_seg));

  if (verbose)
    printf("Consolidate into group: segment %d: %s\n", (int)source_segno, seg_name(source_seg));

  pad_segment(dest_seg, seg_p2align(source_seg));
  DWORD base = seg_hi(dest_seg);

  //assert(MAX_SEGMENT_SIZE <= (WORD)(-1));
  //assert(base <= MAX_SEGMENT_SIZE);
  if ((WORD)(-1) - base < seg_hi(source_seg))
      fatal("segments too large to join\n"); // TODO: more detailed message

  if (seg_hi(dest_seg) >= 0x10000UL)
    fatal("destination group segment %d: %s is already %lu bytes in size\n",
        (int) dest_segno, seg_name(dest_seg), (unsigned long) seg_hi(dest_seg));

  if (0x10000UL - seg_hi(dest_seg) < seg_hi(source_seg))
    fatal("destination group segment %d: %s has %lu bytes free; cannot append segment %d: %s of size %lu\n",
        (int) dest_segno, seg_name(dest_seg), (unsigned long) (0x10000UL - seg_hi(dest_seg)),
        (int) source_segno, seg_name(source_seg), (unsigned long) seg_hi(source_seg));

  if (prog->start.segno == source_segno) {
    prog->start.segno = dest_segno;
    prog->start.offset += base;
    if (verbose >= 2)
      printf("Redefine start address: program segment %d: %s; offset 0x%04x\n",
          (int)prog->start.segno, segment_name(prog->segs, prog->start.segno), (unsigned)prog->start.offset);
  }

  if (prog->stack.segno == source_segno) {
    prog->stack.segno = dest_segno;
    prog->stack.offset += base;
    if (verbose >= 2)
      printf("Redefine stack location: program segment %d: %s; offset 0x%04x\n",
          (int)prog->stack.segno, segment_name(prog->segs, prog->stack.segno), (unsigned)prog->stack.offset);
  }

  update_fixups(prog, source_segno, dest_segno, base, verbose);

  update_symbol_definitions_for_new_segment_number_and_base(
      prog->st, source_segno, dest_segno, base);

  append_segment_data(dest_seg, source_seg);

  remove_segment(prog->segs, source_segno);
}

static void update_fixups(SEGMENTED* prog, SEGNO source_segno, SEGNO dest_segno, DWORD base, int verbose) {
  if (verbose >= 2)
    printf("Update fixups to consolidate seg %d into seg %d at base 0x%04x\n",
        (int) source_segno, (int) dest_segno, (unsigned) base);

  for (unsigned j = 0; j < fixups_count(prog->fixups); j++) {
    FIXUP* i = fixup(prog->fixups, j);

    if (verbose >= 3) {
      printf("FIXUP %u: %s: in seg %d at 0x%04x",
          j, fixup_type_name(i->type), (int) i->holding_seg, (unsigned) i->holding_offset);
      switch (i->type) {
        case FT_OFFSET:
          printf(" addressing seg %d", (int) i->u.addressed_segno);
          break;
        case FT_EXTERNAL:
          printf(", %s", i->u.ext.jump ? "jump displacement" : "data offset");
          break;
        case FT_GROUP_ABSOLUTE_JUMP:
          printf(" group %d: %s", (int)i->u.groupno, group_name(prog->groups, i->u.groupno));
          break;
        case FT_SEGMENT:
          printf(" addressing seg %d", (int) i->u.seg.addressed_segno);
          break;
        case FT_GROUP:
          printf(" addressing group %d", (int) i->u.group.addressed_groupno);
          break;
        default:
          assert(0 && "unexpected fixup type");
      }
      putchar('\n');
    }

    SEGMENT* holding_seg = get_segment(prog->segs, i->holding_seg);
    DWORD offset_value = read_word_le(seg_data(holding_seg) + i->holding_offset);

    switch (i->type) {
      case FT_OFFSET:
        if (i->u.addressed_segno == source_segno) {
          DWORD new_offset = offset_value + base;
          if (verbose >= 3) {
            printf("FIXUP %u: value 0x%04x -> 0x%04x, addressed seg %d -> %d\n",
                j, (unsigned) offset_value, (unsigned) new_offset,
                (int) i->u.addressed_segno, (int) dest_segno);
          }
          if (new_offset > (WORD)(-1))
            fatal("offset out of 16-bit range (D)\n"); // TODO: useful message
          write_word_le(seg_data(holding_seg) + i->holding_offset, (WORD) new_offset);
          i->u.addressed_segno = dest_segno;
        }
        break;
      case FT_EXTERNAL:
        if (offset_value != 0) {
          fprintf(stderr, "Location of external reference does not hold 0: "
                          "seg %d, offset 0x%04x, value 0x%04x\n",
              (int) i->holding_seg, (unsigned) i->holding_offset, (unsigned) offset_value);      
          exit(EXIT_FAILURE);
        }
        break;
      case FT_GROUP_ABSOLUTE_JUMP:
        // handled in resolve
        break;
      case FT_SEGMENT:
        if (offset_value != 0) {
          fprintf(stderr, "Location of segment reference does not hold 0: "
                          "seg %d, offset 0x%04x, value 0x%04x\n",
              (int) i->holding_seg, (unsigned) i->holding_offset, (unsigned) offset_value);      
          exit(EXIT_FAILURE);
        }
        if (i->u.seg.addressed_segno == source_segno) {
          i->u.seg.addressed_segno = dest_segno;
          i->u.seg.addressed_base = base;
        }
        break;
      case FT_GROUP:
        if (offset_value != 0) {
          fprintf(stderr, "Location of group reference does not hold 0: "
                          "seg %d, offset 0x%04x, value 0x%04x\n",
              (int) i->holding_seg, (unsigned) i->holding_offset, (unsigned) offset_value);      
          exit(EXIT_FAILURE);
        }
        break;
      default:
        assert(0 && "unexpected fixup type");
    }

    if (i->holding_seg == source_segno) {
      i->holding_seg = dest_segno;
      DWORD new_holding_offset = base + i->holding_offset;
      if (new_holding_offset > (WORD)(-1))
        fatal("offset out of 16-bit range (E)\n"); // TODO: useful message
      i->holding_offset = (WORD) new_holding_offset;
    }
  }

  if (verbose >= 4)
    dump_segments(prog->segs);
}

// (name, segno, offset)
static void update_symbol_definitions_for_new_segment_number_and_base(
    SYMTAB* st, SEGNO source_segno, SEGNO dest_segno, DWORD base) {
  for (SYMBOL_ID i = 0; i < sym_count(st); i++) {
    SYMBOL* sym = symbol(st, i);
    if (sym->seg == source_segno) {
      sym->seg = dest_segno;
      if (sym->defined) {
        DWORD new_offset = sym->offset + base;
        if (new_offset > (WORD)(-1))
          fatal("offset out of 16-bit range (F): %s\n", sym->name);
        sym->offset = (WORD) new_offset;
      }
    }
  }
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_update_offsets(CuTest* tc) {
  SEGMENTED* prog = new_segmented("PROG", CASE_INSENSITIVE);

  SEGNO s0 = add_segment(prog->segs, "AAA", FALSE, FALSE, 0);
  SEGMENT* seg0 = get_segment(prog->segs, s0);
  static const BYTE DATA0[] = { 0x31, 0x42, 0x53, 0x64, 0x75, 0x86, 0x97, 0xa8, 0xb9, 0xca, 0xdb, 0xec, 0xfd };
  static WORD LO0 = 0x20;
  seg0->pc = LO0;
  emit_segment_data(seg0, DATA0, sizeof DATA0);

  SEGNO s1 = add_segment(prog->segs, "BBB", FALSE, FALSE, 0);
  SEGMENT* seg1 = get_segment(prog->segs, s1);
  static const BYTE DATA1[] = { 0x8F, 0x8E, 0x8D, 0x8C, 0x8B, 0x8A, 0x89, 0x88, 0x87, 0x86 };
  static WORD LO1 = 0x40;
  seg1->pc = LO1;
  emit_segment_data(seg1, DATA1, sizeof DATA1);

  // add_offset_fixup(info, holding_seg, holding_offset, addressed_seg)

  FIXUP* offset0 = add_offset_fixup(prog->fixups, 0, LO0 + 2, 0); // 0x6453 in 0 addressing 0
  FIXUP* offset1 = add_offset_fixup(prog->fixups, 0, LO0 + 7, 1); // 0xb9a8 in 0 addressing 1

  FIXUP* offset2 = add_offset_fixup(prog->fixups, 1, LO1 + 0, 1); // 0x8E8F in 1 addressing 1
  FIXUP* offset3 = add_offset_fixup(prog->fixups, 1, LO1 + 8, 0); // 0x8687 in 1 addressing 0

  static WORD BASE = 0x100;

  update_fixups(prog, 1, 0, BASE, 0);

  // 0x6453 unchanged
  CuAssertIntEquals(tc, 0, offset0->holding_seg);
  CuAssertIntEquals(tc, LO0 + 2, offset0->holding_offset);
  CuAssertIntEquals(tc, 0, offset0->u.addressed_segno);
  CuAssertIntEquals(tc, 0x53, seg0->data[LO0 + 2]);
  CuAssertIntEquals(tc, 0x64, seg0->data[LO0 + 3]);
  
  // 0xb9a8 will be at same place but addressing segment 0 with new base => 0xbaa8
  CuAssertIntEquals(tc, 0, offset1->holding_seg);
  CuAssertIntEquals(tc, LO0 + 7, offset1->holding_offset);
  CuAssertIntEquals(tc, 0, offset1->u.addressed_segno);
  CuAssertIntEquals(tc, 0xa8, seg0->data[LO0 + 7]);
  CuAssertIntEquals(tc, 0xba, seg0->data[LO0 + 8]);

  // 0x8E8F will be in segment 0 at new base, addressing segment 0 => 0x8F8F
  // Note the actual data has not been moved yet.
  CuAssertIntEquals(tc, 0, offset2->holding_seg);
  CuAssertIntEquals(tc, BASE + LO1 + 0, offset2->holding_offset);
  CuAssertIntEquals(tc, 0, offset2->u.addressed_segno);
  CuAssertIntEquals(tc, 0x8F, seg1->data[LO1 + 0]);
  CuAssertIntEquals(tc, 0x8F, seg1->data[LO1 + 1]);

  // 0x8687 will be in segment 0 at new base, still addressing segment 0 as before
  CuAssertIntEquals(tc, 0, offset3->holding_seg);
  CuAssertIntEquals(tc, BASE + LO1 + 8, offset3->holding_offset);
  CuAssertIntEquals(tc, 0, offset3->u.addressed_segno);
  CuAssertIntEquals(tc, 0x87, seg1->data[LO1 + 8]);
  CuAssertIntEquals(tc, 0x86, seg1->data[LO1 + 9]);

  delete_segmented(prog);
}

static void test_update_externals(CuTest* tc) {
  SEGMENTED* prog = new_segmented("PROG", CASE_INSENSITIVE);

  SEGNO s0 = add_segment(prog->segs, "AAA", FALSE, FALSE, 0);
  SEGMENT* seg0 = get_segment(prog->segs, s0);
  static const BYTE DATA0[] = { 0x31, 0x42, 0x53, 0x00, 0x00, 0x86, 0x97, 0xa8, 0x00, 0x00, 0xdb, 0xec, 0xfd };
  static WORD LO0 = 0x20;
  seg0->pc = LO0;
  emit_segment_data(seg0, DATA0, sizeof DATA0);

  SEGNO s1 = add_segment(prog->segs, "BBB", FALSE, FALSE, 0);
  SEGMENT* seg1 = get_segment(prog->segs, s1);
  static const BYTE DATA1[] = { 0x8F, 0x8E, 0x8D, 0x8C, 0x00, 0x00, 0x00, 0x00, 0x87, 0x86 };
  static WORD LO1 = 0x40;
  seg1->pc = LO1;
  emit_segment_data(seg1, DATA1, sizeof DATA1);

  // add_external_fixup(fixups, segno, offset_pos, offset_len, id, jump)

  int e0 = add_external_fixup(prog->fixups, 0, LO0 + 3, 11, FALSE);
  int e1 = add_external_fixup(prog->fixups, 0, LO0 + 8, 12, TRUE);

  int e2 = add_external_fixup(prog->fixups, 1, LO1 + 4, 13, FALSE);
  int e3 = add_external_fixup(prog->fixups, 1, LO1 + 6, 14, TRUE);

  const WORD BASE = 0x100;

  update_fixups(prog, 1, 0, BASE, 0);
 
  // First, in seg 0, data offset, will remain the same
  FIXUP* ext0 = fixup(prog->fixups, e0);
  CuAssertIntEquals(tc, 0, ext0->holding_seg);
  CuAssertIntEquals(tc, LO0 + 3, ext0->holding_offset);
  CuAssertIntEquals(tc, 0x00, seg0->data[LO0 + 3]);
  CuAssertIntEquals(tc, 0x00, seg0->data[LO0 + 4]);
 
  // Second, in seg 0, jump displacement, will remain the same
  FIXUP* ext1 = fixup(prog->fixups, e1);
  CuAssertIntEquals(tc, 0, ext1->holding_seg);
  CuAssertIntEquals(tc, LO0 + 8, ext1->holding_offset);
  CuAssertIntEquals(tc, 0x00, seg0->data[LO0 + 8]);
  CuAssertIntEquals(tc, 0x00, seg0->data[LO0 + 9]);
 
  // Third, in seg 1, data offset, will have new position in seg 0, same value
  FIXUP* ext2 = fixup(prog->fixups, e2);
  CuAssertIntEquals(tc, 0, ext2->holding_seg);
  CuAssertIntEquals(tc, BASE + LO1 + 4, ext2->holding_offset);
  CuAssertIntEquals(tc, 0x00, seg1->data[LO1 + 4]);
  CuAssertIntEquals(tc, 0x00, seg1->data[LO1 + 5]);

  // Fourth, in seg 1, jump displacement, will have new position in seg 0, value adjusted for new base: 0x8789
  FIXUP* ext3 = fixup(prog->fixups, e3);
  CuAssertIntEquals(tc, 0, ext3->holding_seg);
  CuAssertIntEquals(tc, BASE + LO1 + 6, ext3->holding_offset);
  CuAssertIntEquals(tc, 0x00, seg1->data[LO1 + 6]);
  CuAssertIntEquals(tc, 0x00, seg1->data[LO1 + 7]);

  delete_segmented(prog);
}

static void test_update_symbols(CuTest* tc) {
  SYMTAB* st = new_symbol_table(CASE_INSENSITIVE);

  // sym_insert_public(st, name, segno, offset)
  sym_insert_public(st, "AAA", 0, 0x3000);
  sym_insert_public(st, "BBB", 1, 0x4000);
  sym_insert_extern(st, "CCC", 0);

  const WORD BASE = 0x100;

  update_symbol_definitions_for_new_segment_number_and_base(st, 1, 0, BASE);

  // AAA stays in seg 0 at 0x3000
  CuAssertIntEquals(tc, TRUE, sym_defined(st, 0));
  CuAssertIntEquals(tc, 0, sym_seg(st, 0));
  CuAssertIntEquals(tc, 0x3000, sym_offset(st, 0));

  // BBB moves to seg 0 at 0x4000 from new base
  CuAssertIntEquals(tc, TRUE, sym_defined(st, 1));
  CuAssertIntEquals(tc, 0, sym_seg(st, 1));
  CuAssertIntEquals(tc, BASE + 0x4000, sym_offset(st, 1));

  // CCC is still an undefined external
  CuAssertIntEquals(tc, FALSE, sym_defined(st, 2));
  CuAssertIntEquals(tc, 0, sym_seg(st, 2));
  CuAssertIntEquals(tc, 0, sym_offset(st, 2));

  delete_symbol_table(st); 
}

CuSuite* consolidate_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_update_offsets);
  SUITE_ADD_TEST(suite, test_update_externals);
  SUITE_ADD_TEST(suite, test_update_symbols);
  return suite;
}

#endif // UNIT_TEST