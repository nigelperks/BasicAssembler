// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// Incorporate module into program and combine public segments.

#include <stdlib.h>
#include <assert.h>
#include "combine.h"

// As each module is loaded from an object file, it is incorporated
// in the program being built up.
//
// Each module segment either becomes a new program segment
// or is combined into an existing program segment (public segments of the same name).
// A map is created from module segment to program segment.
//
// A map is also created from module group number to program group number.
// When a module group's name is not yet in the program group list,
// a new program group of that name is added.

// The destination segment and address, in the program segment list,
// of a particular module segment.
struct segment_destination {
  SEGNO segno;
  DWORD addr;
};

// The destination segment and address, in the program segment list,
// of each module segment.
typedef struct {
  unsigned size;
  struct segment_destination map[];
} SEGMENT_MAP;

// Create a segment map of the specified size (number of module segments).
// Initialise each destination segment to NO_SEG, address to zero.
static SEGMENT_MAP* new_segment_map(unsigned size) {
  SEGMENT_MAP* map = ecalloc(sizeof *map + size * sizeof map->map[0]);
  map->size = size;
  for (unsigned i = 0; i < size; i++)
    map->map[i].segno = NO_SEG;
  return map;
}

static void delete_segment_map(SEGMENT_MAP* map) {
  efree(map);
}

static VECTOR* add_module_groups_to_program(GROUP_LIST* program_groups, GROUP_LIST* module_groups, int verbose);

static SEGMENT_MAP* add_module_segments_to_program(SEGMENT_LIST* program_segs, SEGMENT_LIST* module_segs, VECTOR* module_to_program_group_map, const GROUP_LIST* program_groups, const char* module_name, int verbose);

static VECTOR* add_module_symbols_to_program(SYMTAB* prog_st, const SYMTAB* module_st,
    SEGMENT_LIST* prog_segs, SEGMENT_MAP* module_to_program_seg_map, int verbose);

static void retarget_module_fixups_to_program(FIXUPS* module_fixups,
    SEGMENT_LIST* module_segs, SEGMENT_MAP* module_to_program_seg_map,
    GROUP_LIST* module_groups, VECTOR* module_to_program_group_map, int verbose);

static void update_module_externals_symbol_id(FIXUPS* module_fixups, VECTOR* module_to_program_symbol_map);

static void move_segments_data(SEGMENT_LIST* prog, SEGMENT_LIST* module, SEGMENT_MAP*, const char* module_name, int verbose);

static void define_start(START* prog_start, START* module_start, SEGMENT_MAP* module_to_program_seg_map, SEGMENT_LIST* prog_segs, int verbose);

// Incorporate a loaded module into the program being built up.
// Both are represented by SEGMENTED structures.
void incorporate_module(SEGMENTED* prog, SEGMENTED* module, int verbose) {
  if (verbose)
    printf("Incorporate module %s into %s\n", module->name, prog->name);

  // Add module group names to program group list when they are not already in it.
  // Obtain destination program group number for each module group number.
  VECTOR* module_to_program_group_map = add_module_groups_to_program(
      prog->groups, module->groups, verbose);

  // Add module segments to program segment list as required.
  // Obtain destination segment number and address for each module segment.
  // This does not copy segment memory.
  SEGMENT_MAP* module_to_program_seg_map = add_module_segments_to_program(
      prog->segs, module->segs, module_to_program_group_map, prog->groups, module->name, verbose);

  // If the module specifies a start address, set the program's start address from it.
  define_start(&prog->start, &module->start, module_to_program_seg_map, prog->segs, verbose);

  // Update fixups' holding segment and holding address to refer to program segments.
  // Update stored offsets to be relative to their program segments.
  retarget_module_fixups_to_program(module->fixups, module->segs,
      module_to_program_seg_map, module->groups, module_to_program_group_map,
      verbose);

  // Modify module symbols to be program symbols with program segment and offset.
  VECTOR* module_to_program_symbol_map = add_module_symbols_to_program(
      prog->st, module->st, prog->segs, module_to_program_seg_map, verbose);

  // Having mapped each module symbol into the program symbol table,
  // modify external fixups' symbol ID to be the ID in the program symbol table.
  update_module_externals_symbol_id(module->fixups, module_to_program_symbol_map);

  // Append each module segment's memory content to the appropriate program segment.
  move_segments_data(prog->segs, module->segs, module_to_program_seg_map, module->name, verbose);

  // Add the module fixups, already modified above for the program segments.
  append_fixups(prog->fixups, module->fixups);

  delete_vector(module_to_program_symbol_map);
  delete_segment_map(module_to_program_seg_map);
  delete_vector(module_to_program_group_map);
}

// If the module specifies a start address, set the program's start address from it.
// Fatal error if module has a start address when program already has one.
static void define_start(START* prog_start, START* module_start, SEGMENT_MAP* module_to_program_seg_map, SEGMENT_LIST* prog_segs, int verbose) {
  if (module_start->segno != NO_SEG) {
    if (prog_start->segno != NO_SEG)
      fatal("multiple start addresses"); // TODO: more detailed message
    prog_start->segno = module_to_program_seg_map->map[module_start->segno].segno;
    prog_start->offset = module_to_program_seg_map->map[module_start->segno].addr + module_start->offset;
    if (verbose >= 2)
      printf("Define start address: program segment %d: %s; offset 0x%04x\n",
          (int)prog_start->segno, segment_name(prog_segs, prog_start->segno), (unsigned)prog_start->offset);
  }
}

// Add module groups to program group list where necessary.
// Produce a map from module group number to program group number.
static VECTOR* add_module_groups_to_program(GROUP_LIST* program_groups, GROUP_LIST* module_groups, int verbose) {
  assert(program_groups != NULL);
  assert(module_groups != NULL);

  VECTOR* map = new_vector(group_list_count(module_groups));

  for (GROUPNO i = 0; i < group_list_count(module_groups); i++) {
    const char* name = group_name(module_groups, i);
    unsigned group = group_index(program_groups, name);
    if (group == NO_GROUP) {
      group = add_group(program_groups, name);
      if (verbose >= 2)
        printf("Add group %d: %s\n", (int)group, name);
    }
    else {
      if (verbose >= 2)
        printf("Found group %d: %s\n", (int)group, name);
    }
    map->val[i] = group;
  }

  return map;
}

static void add_module_segment_to_program(SEGMENT_LIST* program_segs,
                                          const SEGMENT_LIST* module_segs,
                                          SEGNO module_segno,
                                          const VECTOR* module_to_program_group_map,
                                          const GROUP_LIST* program_groups,
                                          SEGMENT_MAP* module_to_program_segment_map,
                                          const char* module_name,
                                          int verbose);

// Add module segments to program where necessary,
// combining public segments of matching name.
// Produce a map from module segment number to program segment.
// Segment memory is not copied.
static SEGMENT_MAP* add_module_segments_to_program(
    SEGMENT_LIST* program_segs, SEGMENT_LIST* module_segs, VECTOR* module_to_program_group_map,
    const GROUP_LIST* program_groups, const char* module_name, int verbose) {
  assert(program_segs != NULL);
  assert(module_segs != NULL);
  assert(module_to_program_group_map != NULL);
  assert(program_groups != NULL);
  assert(module_to_program_group_map->size <= (unsigned) group_list_count(program_groups));

  SEGMENT_MAP* map = new_segment_map(segment_list_count(module_segs));

  for (SEGNO i = 0; i < segment_list_count(module_segs); i++)
    add_module_segment_to_program(program_segs, module_segs, i, module_to_program_group_map,
                                  program_groups, map, module_name, verbose);

  return map;
}

static SEGNO add_program_segment(SEGMENT_LIST* program, const SEGMENT*, GROUPNO, const char* module_name, int verbose);
static SEGNO add_public_segment(SEGMENT_LIST* program_segs, const SEGMENT* module_seg, const GROUP_LIST* program_groups, GROUPNO program_group, const char* module_name, int verbose);
static SEGNO add_stack_segment(SEGMENT_LIST* program_segs, const SEGMENT* module_seg, const GROUP_LIST* program_groups, GROUPNO program_group, const char* module_name, int verbose);

static void check_alignment(const SEGMENT* module_seg, const SEGMENT* program_seg, const char* module_name);

// Map the module segment into the program,
// adding the destination segment and address to the segment map.
// If the program does not already have a segment of the required name and attributes,
// add one. Segment memory is not copied.
static void add_module_segment_to_program(SEGMENT_LIST* program_segs,
                                          const SEGMENT_LIST* module_segs,
                                          SEGNO module_segno,
                                          const VECTOR* module_to_program_group_map,
                                          const GROUP_LIST* program_groups,
                                          SEGMENT_MAP* segment_map,
                                          const char* module_name,
                                          int verbose) {
  const SEGMENT* module_seg = get_segment_const(module_segs, module_segno);
  GROUPNO module_group = seg_group(module_seg);
  GROUPNO program_group = (module_group == NO_GROUP) ? NO_GROUP : (GROUPNO) module_to_program_group_map->val[module_group];
  SEGNO psegno = NO_SEG;
  if (seg_public(module_seg))
    psegno = add_public_segment(program_segs, module_seg, program_groups, program_group, module_name, verbose);
  else if (seg_stack(module_seg))
    psegno = add_stack_segment(program_segs, module_seg, program_groups, program_group, module_name, verbose);
  else
    psegno = add_program_segment(program_segs, module_seg, program_group, module_name, verbose);
  assert(psegno != NO_SEG);
  const SEGMENT* program_seg = get_segment(program_segs, psegno);
  check_alignment(module_seg, program_seg, module_name);
  segment_map->map[module_segno].segno = psegno;
  segment_map->map[module_segno].addr = segment_end_p2aligned(program_seg, seg_p2align(module_seg));
}

// If the program already has a public segment of the same name as the module segment,
// check that they belong to the same group, so will have the same segment address.
// Otherwise add a public segment of the required name to the program.
static SEGNO add_public_segment(
    SEGMENT_LIST* program_segs, const SEGMENT* module_seg, const GROUP_LIST* program_groups,
    GROUPNO program_group, const char* module_name, int verbose) {
  SEGNO psegno = find_public_segment(program_segs, seg_name(module_seg));
  if (psegno == NO_SEG)
    psegno = add_program_segment(program_segs, module_seg, program_group, module_name, verbose);
  else {
    if (verbose >= 2)
      printf("Found public segment %d: %s\n", (int)psegno, segment_name(program_segs, psegno));
    GROUPNO prev_group = segment_group(program_segs, psegno);
    if (prev_group != program_group) {
      const char* prev_group_name = (prev_group == NO_GROUP) ? "none" : group_name(program_groups, prev_group);
      const char* dest_group_name = (program_group == NO_GROUP) ? "none" : group_name(program_groups, program_group);
      fatal("Conflicting groups for public segment %s: %s, %s\n",
            seg_name(module_seg), prev_group_name, dest_group_name);
    }
  }
  return psegno;
}

// If the program already has a stack segment of the same name as the module segment,
// check that they belong to the same group, so will have the same segment address.
// Otherwise add a stack segment of the required name to the program.
// The linker checks there is only one stack segment when consolidating groups.
static SEGNO add_stack_segment(
    SEGMENT_LIST* program_segs, const SEGMENT* module_seg, const GROUP_LIST* program_groups,
    GROUPNO program_group, const char* module_name, int verbose) {
  SEGNO psegno = find_stack_segment(program_segs, seg_name(module_seg));
  if (psegno == NO_SEG)
    psegno = add_program_segment(program_segs, module_seg, program_group, module_name, verbose);
  else {
    if (verbose >= 2)
      printf("Found stack segment %d: %s\n", (int)psegno, segment_name(program_segs, psegno));
    GROUPNO prev_group = segment_group(program_segs, psegno);
    if (prev_group != program_group) {
      const char* prev_group_name = (prev_group == NO_GROUP) ? "none" : group_name(program_groups, prev_group);
      const char* dest_group_name = (program_group == NO_GROUP) ? "none" : group_name(program_groups, program_group);
      fatal("Conflicting groups for stack segment %s: %s, %s\n",
            seg_name(module_seg), prev_group_name, dest_group_name);
    }
  }
  return psegno;
}

// Add new program segment with name and attributes (public, stack, alignment, group) of given seg.
static SEGNO add_program_segment(SEGMENT_LIST* program, const SEGMENT* seg, GROUPNO group, const char* module_name, int verbose) {
  if (seg_public(seg) && seg_stack(seg))
    fatal("segment is both PUBLIC and STACK: %s\n", seg_name(seg));
  SEGNO psegno = add_segment(program, seg_name(seg), seg_public(seg), seg_stack(seg), group);
  set_segment_p2align(program, psegno, seg_p2align(seg));
  const char* type = seg_public(seg) ? "public" : (seg_stack(seg) ? "stack" : "private");
  if (verbose >= 2)
    printf("Add %s segment %d: %s\n", type, (int)psegno, segment_name(program, psegno));
  return psegno;
}

// Check that the required alignment of a module segment
// does not exceed the required alignment of its destination program segment.
static void check_alignment(const SEGMENT* module_seg, const SEGMENT* program_seg, const char* module_name) {
  if (seg_p2align(module_seg) > seg_p2align(program_seg))
      fatal("module '%s' segment '%s' with alignment 2^%u cannot be combined with public segment '%s' with alignment 2^%u\n",
            module_name, seg_name(module_seg), seg_p2align(module_seg), seg_name(program_seg), seg_p2align(program_seg));
}

static SYMBOL_ID add_module_symbol_to_program(SYMTAB* prog_st, const SYMTAB* module_st, SYMBOL_ID module_id,
    SEGMENT_LIST* prog_segs, SEGMENT_MAP* module_to_program_seg_map, int verbose);

// A symbol in the linker is an address label (name, segno, offset).
// Modify module symbols to be program symbols:
// change their segment and offset into the corresponding program segment and offset.
// If a module symbol name does not exist in the program, add it;
// otherwise check for multiple definition vs public/extern reconciliation.
// Return a mapping from module symbol ID to the symbol's ID in the program symbol table.
static VECTOR* add_module_symbols_to_program(SYMTAB* prog_st, const SYMTAB* module_st,
    SEGMENT_LIST* prog_segs, SEGMENT_MAP* module_to_program_seg_map, int verbose) {
  VECTOR* sym_map = new_vector(sym_count(module_st));
  for (SYMBOL_ID id = 0; id < sym_count(module_st); id++) {
    sym_map->val[id] = add_module_symbol_to_program(prog_st, module_st, id, prog_segs, module_to_program_seg_map, verbose);
  }
  return sym_map;
}

static void print_symbol(SYMBOL_ID, const SYMBOL*);

// Modify a module symbol (address label) to be a program symbol:
// change its segment and offset into the corresponding program segment and offset.
// If the symbol name does not exist in the program, add it;
// otherwise check for multiple definition vs public/extern reconciliation.
static SYMBOL_ID add_module_symbol_to_program(SYMTAB* prog_st, const SYMTAB* module_st, SYMBOL_ID module_id,
    SEGMENT_LIST* prog_segs, SEGMENT_MAP* module_to_program_seg_map, int verbose) {
  const SYMBOL* module_sym = const_symbol(module_st, module_id);

  if (verbose >= 3)
    print_symbol(module_id, module_sym);

  assert(module_sym->seg != NO_SEG && module_sym->seg < (int) module_to_program_seg_map->size);

  const SEGNO new_segno = module_to_program_seg_map->map[module_sym->seg].segno;
  assert(new_segno != NO_SEG && new_segno < segment_list_count(prog_segs));
  if (verbose >= 3)
    printf("SYMBOL %d: move to seg %d\n", (int)module_id, (int)new_segno);

  const DWORD base = module_to_program_seg_map->map[module_sym->seg].addr;
  DWORD new_offset = module_sym->offset + base;
  if (verbose >= 3)
    printf("SYMBOL %d: move to base 0x%04lx -> 0x%04lx\n", (int)module_id, (unsigned long)base, (unsigned long)new_offset);
  if (new_offset > (WORD)(-1))
    fatal("offset out of 16-bit range (C): %s: 0x%06lx\n", module_sym->name, (unsigned long)new_offset);

  SYMBOL_ID prog_id = sym_lookup(prog_st, module_sym->name);

  if (prog_id == NO_SYM) {
    if (module_sym->defined)
      prog_id = sym_insert_public(prog_st, module_sym->name, new_segno, (WORD)new_offset);
    else
      prog_id = sym_insert_extern(prog_st, module_sym->name, new_segno);
  }
  else {
    const prog_segno = sym_seg(prog_st, prog_id);
    if (prog_segno != new_segno)
      fatal("in different segments: %s: %s, %s\n",
          module_sym->name, segment_name(prog_segs, prog_segno), segment_name(prog_segs, new_segno));
    if (sym_defined(prog_st, prog_id)) {
      if (module_sym->defined)
        fatal("multiply defined: %s\n", module_sym->name);   // TODO: decent message
    }
    else {
      if (module_sym->defined)
        sym_define(prog_st, prog_id, new_offset);
    }
  }

  return prog_id;
}

static void print_symbol(SYMBOL_ID id, const SYMBOL* sym) {
  printf("SYMBOL %d: %s: %s: seg %d",
      (int) id, sym->name, sym->defined ? "defined" : "declared", (int) sym->seg);
  if (sym->defined)
    printf(": 0x%04lx", (unsigned long) sym->offset);
  putchar('\n');
}

// Having combined module segments into program segments,
// an offset in memory relative to the module segment
// must be made relative to its program segment.
// The module's fixups must be updated
// to refer to the new holding segment and holding address.
static void retarget_module_fixups_to_program(FIXUPS* module_fixups,
    SEGMENT_LIST* module_segs, SEGMENT_MAP* module_to_program_seg_map,
    GROUP_LIST* module_groups, VECTOR* module_to_program_group_map, int verbose) {
  if (verbose >= 2)
    puts("Update module fixups for program segment numbers and addresses");

  for (unsigned j = 0; j < fixups_count(module_fixups); j++) {
    FIXUP* i = fixup(module_fixups, j);

    assert(i->holding_seg >= 0 && i->holding_seg < (int) module_to_program_seg_map->size);

    if (verbose >= 3) {
      printf("FIXUP %u: %s: in module seg %d at 0x%04x",
          j, fixup_type_name(i->type),
          (int) i->holding_seg, (unsigned) i->holding_offset);
      switch (i->type) {
        case FT_OFFSET:
          printf(" addressing module seg %d", (int) i->u.addressed_segno);
          break;
        case FT_EXTERNAL:
          printf(" symbol %d: type %s", (int)i->u.ext.id, i->u.ext.jump ? "JUMP" : "DATA");
          break;
        case FT_GROUP_ABSOLUTE_JUMP:
          assert(module_groups != NULL);
          assert(module_to_program_group_map != NULL);
          assert(i->u.groupno < group_list_count(module_groups));
          printf(" group %d: %s", (int)i->u.groupno, group_name(module_groups, i->u.groupno));
          break;
        case FT_SEGMENT:
          printf(" addressing module seg %d", (int) i->u.seg.addressed_segno);
          break;
        case FT_GROUP:
          printf(" addressing module group %d", (int) i->u.group.addressed_groupno);
          break;
        default:
          assert(0 && "unexpected fixup type");
      }
      putchar('\n');
    }

    SEGMENT* holding_seg = get_segment(module_segs, i->holding_seg);
    DWORD offset_value = read_word_le(seg_data(holding_seg) + i->holding_offset);
    if (verbose >= 3)
      printf("FIXUP %u: offset value 0x%04x\n", j, (unsigned) offset_value);

    switch (i->type) {
      case FT_OFFSET: {
        // The stored offset is relative to the module segment start.
        // The module segment is placed in a program segment.
        // Make the offset relative to the program segment start.
        assert(i->u.addressed_segno >= 0 && i->u.addressed_segno < (int) module_to_program_seg_map->size);
        SEGNO addressed_destno = module_to_program_seg_map->map[i->u.addressed_segno].segno;
        DWORD addressed_base = module_to_program_seg_map->map[i->u.addressed_segno].addr;
        DWORD new_offset = offset_value + addressed_base;
        if (verbose >= 3) {
          printf("FIXUP %u: offset value 0x%04x -> address seg %d base 0x%04x => 0x%04x\n",
              j, (unsigned) offset_value,
              (int) addressed_destno, (unsigned) addressed_base, (unsigned) new_offset);
        }
        if (new_offset > (WORD)(-1))
          fatal("offset out of 16-bit range (A)\n"); // TODO: useful message
        write_word_le(seg_data(holding_seg) + i->holding_offset, (WORD) new_offset);
        i->u.addressed_segno = addressed_destno;
        break;
      }
      case FT_EXTERNAL:
        // The external symbol value can only be filled in after consolidating groups,
        // when segments are at their final location.
        // Meanwhile the stored offset value should be zero.
        if (offset_value != 0) {
          fprintf(stderr, "Location of external reference does not hold 0: "
                          "seg %d, offset 0x%04x, value 0x%04x\n",
              (int) i->holding_seg, (unsigned) i->holding_offset, (unsigned) offset_value);
          exit(EXIT_FAILURE);
        }
        break;
      case FT_GROUP_ABSOLUTE_JUMP:
        // The stored absolute jump target within a group
        // can only be finalised to a PC-relative jump displacement
        // after consolidating groups, in the resolve stage.
        // Meanwhile the stored offset value is the absolute offset in the group.
        break;
      case FT_SEGMENT:
        // The physical segment address of the segment is resolved
        // when the program image is built, and finalised at load time.
        // Meanwhile the stored value should be zero.
        if (offset_value != 0) {
          fprintf(stderr, "Location of segment reference does not hold 0: "
                          "seg %d, offset 0x%04x, value 0x%04x\n",
              (int) i->holding_seg, (unsigned) i->holding_offset, (unsigned) offset_value);
          exit(EXIT_FAILURE);
        }
        // TODO: check if we need the following code as in consolidate.c
#if 0
        if (i->u.seg.addressed_segno == source_segno) {
          i->u.seg.addressed_segno = dest_segno;
          i->u.seg.addressed_base = base;
        }
#endif
        break;
      case FT_GROUP:
        // The physical segment address of the group is resolved
        // when the program image is built, and finalised at load time.
        // Meanwhile the stored value should be zero.
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

    // It is not only a stored offset value that must be changed,
    // when it is changed to refer to a different segment.
    // The holding segment number and offset must also be changed.
    SEGNO holding_destno = module_to_program_seg_map->map[i->holding_seg].segno;
    DWORD holding_base = module_to_program_seg_map->map[i->holding_seg].addr;
    DWORD holding_offset = holding_base + i->holding_offset;
    if (verbose >= 3) {
      printf("FIXUP %u: in seg %d at 0x%04x -> seg %d (base 0x%04x) at 0x%04x\n",
          j,
          (int) i->holding_seg, (unsigned) i->holding_offset,
          (int) holding_destno, (unsigned) holding_base, (unsigned) holding_offset);
    }
    if (holding_offset > (WORD)(-1))
      fatal("offset out of 16-bit range (B)\n"); // TODO: useful message
    i->holding_seg = holding_destno;
    i->holding_offset = (WORD) holding_offset;
  }

  if (verbose >= 4)
    dump_segments(module_segs);
}

// An EXTERNAL fixup points to a location to receive the value of an external symbol.
// The fixup contains the symbol's ID in the module symbol table.
// Modify the symbol ID to be the ID in the program symbol table.
static void update_module_externals_symbol_id(FIXUPS* fixups, VECTOR* module_to_program_symbol_map) {
  for (unsigned i = 0; i < fixups_count(fixups); i++) {
    FIXUP* e = fixup(fixups, i);
    if (e->type == FT_EXTERNAL)
      e->u.ext.id = (SYMBOL_ID) module_to_program_symbol_map->val[e->u.ext.id];
  }
}

static void append(SEGMENT* dest, SEGMENT* source, const char* module_name, int verbose);

// Note this does not use the base values in the segment map,
// it just appends to the end of the destination segments.
static void move_segments_data(SEGMENT_LIST* prog, SEGMENT_LIST* module, SEGMENT_MAP* seg_map, const char* module_name, int verbose) {
  for (SEGNO i = 0; i < segment_list_count(module); i++) {
    SEGMENT* source = get_segment(module, i);
    SEGMENT* dest = get_segment(prog, seg_map->map[i].segno);
    append(dest, source, module_name, verbose);
    remove_segment(module, i);
  }
}

// Append source segment memory content to the end of the destination segment,
// first aligning the end of the destination.
// Add source uninitialised data space to destination uninitialised data space.
// For now, a segment may not contain both initialised and uninitialised data.
// Update layout information in the destination for the map file.
static void append(SEGMENT* dest, SEGMENT* source, const char* module_name, int verbose) {
  assert(dest != NULL);
  assert(source != NULL);
  assert(module_name != NULL);

  if (verbose >= 2)
    printf("Append module '%s' segment '%s' from 0x%04x to program segment '%s' at 0x%04x\n",
           module_name,
           seg_name(source), (unsigned)seg_lo(source),
           seg_name(dest), (unsigned)(segment_end(dest) + seg_lo(source)));

  if (segment_has_data(source)) {
    if (seg_space(dest))
      fatal("cannot combine initialised data in '%s' in '%s' on top of uninitialised space in '%s'\n",
            seg_name(source), module_name, seg_name(dest));

    if (seg_space(source))
      fatal("segment '%s' has both initialised and uninitialised data\n", seg_name(source));

    align_segment_hi(dest, seg_p2align(source));
    append_segment(dest, source);
  }

  if (seg_space(source)) {
    if (segment_has_data(dest))
      fatal("cannot combine uninitialised space in '%s' in '%s' with initialised data in '%s'\n",
            seg_name(source), module_name, seg_name(dest));

    space_out(dest, seg_p2align(source));
    append_segment(dest, source);
  }

  const unsigned long size = segment_end(dest);
  if (size > 0x10000UL)
    fatal("combined segment '%s' is too big: %lu = %0xh bytes\n", seg_name(dest), size, size);
}


#ifdef UNIT_TEST

#include <string.h>
#include "CuTest.h"
#include "symbol.h"

static void test_new_segment_map(CuTest* tc) {
  SEGMENT_MAP* map;

  map = new_segment_map(0);
  CuAssertPtrNotNull(tc, map);
  CuAssertIntEquals(tc, 0, map->size);
  delete_segment_map(map);

  map = new_segment_map(4);
  CuAssertPtrNotNull(tc, map);
  CuAssertIntEquals(tc, 4, map->size);
  CuAssertIntEquals(tc, 0, map->map[0].addr);
  CuAssertIntEquals(tc, NO_SEG, map->map[0].segno);
  CuAssertIntEquals(tc, 0, map->map[1].addr);
  CuAssertIntEquals(tc, NO_SEG, map->map[1].segno);
  CuAssertIntEquals(tc, 0, map->map[2].addr);
  CuAssertIntEquals(tc, NO_SEG, map->map[2].segno);
  CuAssertIntEquals(tc, 0, map->map[3].addr);
  CuAssertIntEquals(tc, NO_SEG, map->map[3].segno);
  delete_segment_map(map);
}

static void test_add_groups_empty(CuTest* tc) {
  GROUP_LIST* dest = new_group_list(CASE_INSENSITIVE);
  GROUP_LIST* src = new_group_list(CASE_INSENSITIVE);

  VECTOR* map = add_module_groups_to_program(dest, src, 0);

  CuAssertPtrNotNull(tc, map);
  CuAssertIntEquals(tc, 0, map->size);
  CuAssertIntEquals(tc, 0, group_list_count(src));
  CuAssertIntEquals(tc, 0, group_list_count(dest));

  delete_vector(map);
  delete_group_list(src);
  delete_group_list(dest);
}

static void test_add_groups_non_empty(CuTest* tc) {
  GROUP_LIST* dest = new_group_list(CASE_INSENSITIVE);
  GROUP_LIST* src = new_group_list(CASE_INSENSITIVE);
  VECTOR* map;

  add_group(dest, "CABBAGE");  // 0
  add_group(dest, "SWINE");    // 1

  add_group(src, "Liver");     // -> 2
  add_group(src, "Cabbage");   // -> 0
  add_group(src, "Turnip");    // -> 3

  map = add_module_groups_to_program(dest, src, 0);

  CuAssertPtrNotNull(tc, map);
  CuAssertIntEquals(tc, 3, map->size);
  CuAssertIntEquals(tc, 2, map->val[0]);
  CuAssertIntEquals(tc, 0, map->val[1]);
  CuAssertIntEquals(tc, 3, map->val[2]);

  CuAssertIntEquals(tc, 4, group_list_count(dest));
  CuAssertStrEquals(tc, "CABBAGE", group_name(dest, 0));
  CuAssertStrEquals(tc, "SWINE", group_name(dest, 1));
  CuAssertStrEquals(tc, "Liver", group_name(dest, 2));
  CuAssertStrEquals(tc, "Turnip", group_name(dest, 3));

  CuAssertIntEquals(tc, 3, group_list_count(src));
  CuAssertStrEquals(tc, "Liver", group_name(src, 0));
  CuAssertStrEquals(tc, "Cabbage", group_name(src, 1));
  CuAssertStrEquals(tc, "Turnip", group_name(src, 2));

  delete_vector(map);

  delete_group_list(src);
  delete_group_list(dest);
}

static void test_add_segments_empty(CuTest* tc) {
  GROUP_LIST* groups = new_group_list(CASE_INSENSITIVE);
  VECTOR* group_map = new_vector(0);

  SEGMENT_LIST* prog = new_segment_list(CASE_INSENSITIVE);
  SEGMENT_LIST* module = new_segment_list(CASE_INSENSITIVE);

  SEGMENT_MAP* map = add_module_segments_to_program(prog, module, group_map, groups, "file.obj", 0);

  CuAssertPtrNotNull(tc, map);
  CuAssertIntEquals(tc, 0, map->size);
  CuAssertIntEquals(tc, 0, segment_list_count(prog));
  CuAssertIntEquals(tc, 0, segment_list_count(module));

  delete_segment_map(map);
  delete_segment_list(module);
  delete_segment_list(prog);
  delete_vector(group_map);
  delete_group_list(groups);
}

static void test_add_segments_no_groups(CuTest* tc) {
  GROUP_LIST* groups = new_group_list(CASE_INSENSITIVE);
  VECTOR* group_map = new_vector(0);

  SEGMENT_LIST* program = new_segment_list(CASE_INSENSITIVE);
  SEGMENT_LIST* module = new_segment_list(CASE_INSENSITIVE);

  add_segment(program, "CODE", TRUE, FALSE, NO_GROUP);    // 0
  add_segment(program, "DATA", FALSE, FALSE, NO_GROUP);   // 1
  add_segment(program, "SHARED", TRUE, FALSE, NO_GROUP);  // 2

  program->seg[2]->hi = 0x17;

  add_segment(module, "CODE", FALSE, FALSE, NO_GROUP);   // -> 3
  add_segment(module, "DATA", TRUE, FALSE, NO_GROUP);    // -> 4
  add_segment(module, "SHARED", TRUE, FALSE, NO_GROUP);  // -> 2

  SEGMENT_MAP* map = add_module_segments_to_program(program, module, group_map, groups, "file.obj", 0);

  CuAssertPtrNotNull(tc, map);
  CuAssertIntEquals(tc, 3, map->size);
  CuAssertIntEquals(tc, 3, map->map[0].segno);
  CuAssertIntEquals(tc, 0, map->map[0].addr);
  CuAssertIntEquals(tc, 4, map->map[1].segno);
  CuAssertIntEquals(tc, 0, map->map[1].addr);
  CuAssertIntEquals(tc, 2, map->map[2].segno);
  CuAssertIntEquals(tc, 0x20, map->map[2].addr);

  CuAssertIntEquals(tc, 5, segment_list_count(program));

  CuAssertStrEquals(tc, "CODE", segment_name(program, 0));
  CuAssertIntEquals(tc, TRUE, segment_public(program, 0));
  CuAssertIntEquals(tc, NO_GROUP, segment_group(program, 0));

  CuAssertStrEquals(tc, "DATA", segment_name(program, 1));
  CuAssertIntEquals(tc, FALSE, segment_public(program, 1));
  CuAssertIntEquals(tc, NO_GROUP, segment_group(program, 1));

  CuAssertStrEquals(tc, "SHARED", segment_name(program, 2));
  CuAssertIntEquals(tc, TRUE, segment_public(program, 2));
  CuAssertIntEquals(tc, NO_GROUP, segment_group(program, 2));

  CuAssertStrEquals(tc, "CODE", segment_name(program, 3));
  CuAssertIntEquals(tc, FALSE, segment_public(program, 3));
  CuAssertIntEquals(tc, NO_GROUP, segment_group(program, 3));

  CuAssertStrEquals(tc, "DATA", segment_name(program, 4));
  CuAssertIntEquals(tc, TRUE, segment_public(program, 4));
  CuAssertIntEquals(tc, NO_GROUP, segment_group(program, 4));

  CuAssertIntEquals(tc, 3, segment_list_count(module));

  delete_segment_map(map);
  delete_segment_list(module);
  delete_segment_list(program);
  delete_vector(group_map);
  delete_group_list(groups);
}

static void test_add_segments_with_groups(CuTest* tc) {
  GROUP_LIST* groups = new_group_list(CASE_INSENSITIVE);
  add_group(groups, "COMMON");  // 0: was group 0 in dest, group 1 in src
  add_group(groups, "DEST_1");  // 1: was group 1 in dest
  add_group(groups, "SRC_0");   // 2: was group 0 in src

  VECTOR* group_map = new_vector(2);
  group_map->val[0] = 2;
  group_map->val[1] = 0;

  SEGMENT_LIST* program = new_segment_list(CASE_INSENSITIVE);
  SEGMENT_LIST* module = new_segment_list(CASE_INSENSITIVE);

  add_segment(program, "CODE", TRUE, FALSE, 1);          // 0
  add_segment(program, "DATA", FALSE, FALSE, NO_GROUP);  // 1
  add_segment(program, "SHARED", TRUE, FALSE, 0);        // 2

  program->seg[2]->hi = 0x17;

  add_segment(module, "CODE", FALSE, FALSE, 0);          // -> 3
  add_segment(module, "DATA", TRUE, FALSE, NO_GROUP);    // -> 4
  add_segment(module, "SHARED", TRUE, FALSE, 1);         // -> 2

  SEGMENT_MAP* map = add_module_segments_to_program(program, module, group_map, groups, "file.obj", 0);

  CuAssertPtrNotNull(tc, map);
  CuAssertIntEquals(tc, 3, map->size);
  CuAssertIntEquals(tc, 3, map->map[0].segno);
  CuAssertIntEquals(tc, 0, map->map[0].addr);
  CuAssertIntEquals(tc, 4, map->map[1].segno);
  CuAssertIntEquals(tc, 0, map->map[1].addr);
  CuAssertIntEquals(tc, 2, map->map[2].segno);
  CuAssertIntEquals(tc, 0x20, map->map[2].addr);

  CuAssertIntEquals(tc, 5, segment_list_count(program));

  CuAssertStrEquals(tc, "CODE", segment_name(program, 0));
  CuAssertIntEquals(tc, TRUE, segment_public(program, 0));
  CuAssertIntEquals(tc, 1, segment_group(program, 0));

  CuAssertStrEquals(tc, "DATA", segment_name(program, 1));
  CuAssertIntEquals(tc, FALSE, segment_public(program, 1));
  CuAssertIntEquals(tc, NO_GROUP, segment_group(program, 1));

  CuAssertStrEquals(tc, "SHARED", segment_name(program, 2));
  CuAssertIntEquals(tc, TRUE, segment_public(program, 2));
  CuAssertIntEquals(tc, 0, segment_group(program, 2));

  CuAssertStrEquals(tc, "CODE", segment_name(program, 3));
  CuAssertIntEquals(tc, FALSE, segment_public(program, 3));
  CuAssertIntEquals(tc, 2, segment_group(program, 3));

  CuAssertStrEquals(tc, "DATA", segment_name(program, 4));
  CuAssertIntEquals(tc, TRUE, segment_public(program, 4));
  CuAssertIntEquals(tc, NO_GROUP, segment_group(program, 4));

  CuAssertIntEquals(tc, 3, segment_list_count(module));

  delete_segment_map(map);
  delete_segment_list(module);
  delete_segment_list(program);
  delete_vector(group_map);
  delete_group_list(groups);
}

static void test_add_symbols_empty(CuTest* tc) {
  SYMTAB* prog_st = new_symbol_table(CASE_INSENSITIVE);
  SYMTAB* module_st = new_symbol_table(CASE_INSENSITIVE);
  SEGMENT_LIST* prog_segs = new_segment_list(CASE_INSENSITIVE);
  SEGMENT_MAP* seg_map = new_segment_map(0);

  VECTOR* sym_map = add_module_symbols_to_program(prog_st, module_st, prog_segs, seg_map, 3);
  CuAssertPtrNotNull(tc, sym_map);
  CuAssertIntEquals(tc, 0, sym_map->size);
  delete_vector(sym_map);

  delete_segment_map(seg_map);
  delete_segment_list(prog_segs);
  delete_symbol_table(module_st);
  delete_symbol_table(prog_st);
}

static void test_add_symbols(CuTest* tc) {
  SYMTAB* prog_st = new_symbol_table(CASE_INSENSITIVE);
  SYMTAB* module_st = new_symbol_table(CASE_INSENSITIVE);
  SEGMENT_LIST* prog_segs = new_segment_list(CASE_INSENSITIVE);

  // seg name    prog seg    module seg    symbols
  // SEG0        0           1             AAA
  // SEG1        1           2             BBB CCC
  // SEG2        2           3             DDD EEE
  // SEG3        3           0

  // symbol    prog ID    module ID
  // AAA       0          1
  // BBB       1          0
  // CCC       2          -
  // DDD       3          2
  // EEE       4          -
  // FFF       -          3
  // GGG       -          4

  add_segment(prog_segs, "SEG0", TRUE, FALSE, NO_GROUP);
  add_segment(prog_segs, "SEG1", TRUE, FALSE, NO_GROUP);
  add_segment(prog_segs, "SEG2", TRUE, FALSE, NO_GROUP);
  add_segment(prog_segs, "SEG3", TRUE, FALSE, NO_GROUP);

  sym_insert_public(prog_st, "AAA", 0, 0x120);  // defined in program, declared in module
  sym_insert_extern(prog_st, "BBB", 1);         // declared in program, defined in module
  sym_insert_public(prog_st, "CCC", 1, 0x200);  // defined in program, not in module
  sym_insert_extern(prog_st, "DDD", 2);         // declared in program, declared in module
  sym_insert_extern(prog_st, "EEE", 2);         // declared in program, not in module

  sym_insert_public(module_st, "bbb", 2, 0x400);   // declared in program, defined in module
  sym_insert_extern(module_st, "aaa", 1);          // defined in program, declared in module
  sym_insert_extern(module_st, "ddd", 3);          // declared in program, declared in module
  sym_insert_extern(module_st, "fff", 0);          // not in program, declared in module
  sym_insert_public(module_st, "ggg", 0, 0x300);   // not in program, defined in module

  SEGMENT_MAP* seg_map = new_segment_map(4);
  CuAssertPtrNotNull(tc, seg_map);
  seg_map->map[0].segno = 3;
  seg_map->map[0].addr = 0x1000;
  seg_map->map[1].segno = 0;
  seg_map->map[1].addr = 0x1100;
  seg_map->map[2].segno = 1;
  seg_map->map[2].addr = 0x1200;
  seg_map->map[3].segno = 2;
  seg_map->map[3].addr = 0x1300;

  VECTOR* sym_map = add_module_symbols_to_program(prog_st, module_st, prog_segs, seg_map, 3);
  CuAssertPtrNotNull(tc, sym_map);
  CuAssertIntEquals(tc, 5, sym_map->size);
  CuAssertIntEquals(tc, 1, sym_map->val[0]);
  CuAssertIntEquals(tc, 0, sym_map->val[1]);
  CuAssertIntEquals(tc, 3, sym_map->val[2]);
  CuAssertIntEquals(tc, 5, sym_map->val[3]);
  CuAssertIntEquals(tc, 6, sym_map->val[4]);

  CuAssertIntEquals(tc, 7, sym_count(prog_st));

  CuAssertStrEquals(tc, "AAA", sym_name(prog_st, 0));
  CuAssertIntEquals(tc, TRUE, sym_defined(prog_st, 0));
  CuAssertIntEquals(tc, 0, sym_seg(prog_st, 0));
  CuAssertIntEquals(tc, 0x120, sym_offset(prog_st, 0));

  CuAssertStrEquals(tc, "BBB", sym_name(prog_st, 1));
  CuAssertIntEquals(tc, TRUE, sym_defined(prog_st, 1));
  CuAssertIntEquals(tc, 1, sym_seg(prog_st, 1));
  CuAssertIntEquals(tc, 0x1200 + 0x400, sym_offset(prog_st, 1));

  CuAssertStrEquals(tc, "CCC", sym_name(prog_st, 2));
  CuAssertIntEquals(tc, TRUE, sym_defined(prog_st, 2));
  CuAssertIntEquals(tc, 1, sym_seg(prog_st, 2));
  CuAssertIntEquals(tc, 0x200, sym_offset(prog_st, 2));

  CuAssertStrEquals(tc, "DDD", sym_name(prog_st, 3));
  CuAssertIntEquals(tc, FALSE, sym_defined(prog_st, 3));
  CuAssertIntEquals(tc, 2, sym_seg(prog_st, 3));
  CuAssertIntEquals(tc, 0, sym_offset(prog_st, 3));

  CuAssertStrEquals(tc, "EEE", sym_name(prog_st, 4));
  CuAssertIntEquals(tc, FALSE, sym_defined(prog_st, 4));
  CuAssertIntEquals(tc, 2, sym_seg(prog_st, 4));
  CuAssertIntEquals(tc, 0, sym_offset(prog_st, 4));

  CuAssertStrEquals(tc, "fff", sym_name(prog_st, 5));
  CuAssertIntEquals(tc, FALSE, sym_defined(prog_st, 5));
  CuAssertIntEquals(tc, 3, sym_seg(prog_st, 5));
  CuAssertIntEquals(tc, 0, sym_offset(prog_st, 5));

  CuAssertStrEquals(tc, "ggg", sym_name(prog_st, 6));
  CuAssertIntEquals(tc, TRUE, sym_defined(prog_st, 6));
  CuAssertIntEquals(tc, 3, sym_seg(prog_st, 6));
  CuAssertIntEquals(tc, 0x1000 + 0x300, sym_offset(prog_st, 6));

  CuAssertIntEquals(tc, 5, sym_count(module_st));

  // Clean up

  delete_vector(sym_map);
  delete_segment_map(seg_map);
  delete_segment_list(prog_segs);
  delete_symbol_table(module_st);
  delete_symbol_table(prog_st);
}

static void test_update_offsets(CuTest* tc) {
  SEGMENT_LIST* module_segs = new_segment_list(CASE_INSENSITIVE);
  FIXUPS* module_offsets = new_fixups();

  SEGNO segno0 = add_segment(module_segs, "SEG0", FALSE, FALSE, NO_GROUP);
  SEGMENT* seg0 = get_segment(module_segs, segno0);
  static const BYTE DATA0[] = { 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77 };
  write_segment(seg0, 0x100, DATA0, sizeof DATA0);

  // add_offset_fixup(info, holding_seg, holding_offset, addressed_seg)
  FIXUP* offset0 = add_offset_fixup(module_offsets, 0, 0x104, 1);
  FIXUP* offset1 = add_offset_fixup(module_offsets, 0, 0x106, 0);

  SEGNO segno1 = add_segment(module_segs, "SEG1", FALSE, FALSE, NO_GROUP);
  SEGMENT* seg1 = get_segment(module_segs, segno1);
  static const BYTE DATA1[] = { 0xDE, 0xAD, 0xFA, 0xCE };
  write_segment(seg1, 0, DATA1, sizeof DATA1);

  FIXUP* offset2 = add_offset_fixup(module_offsets, 1, 0, 0);

  SEGMENT_MAP* module_to_program = new_segment_map(2);
  module_to_program->map[0].segno = 0;
  module_to_program->map[0].addr = 0x100;
  module_to_program->map[1].segno = 2;
  module_to_program->map[1].addr = 0;

  retarget_module_fixups_to_program(module_offsets, module_segs, module_to_program, NULL, NULL, 0);

  // 0x5544 addressing seg 1 -> 0x5544 in seg 2
  CuAssertIntEquals(tc, 0x44, seg0->data[0x104]);
  CuAssertIntEquals(tc, 0x55, seg0->data[0x105]);
  CuAssertIntEquals(tc, 2, offset0->u.addressed_segno);

  // 0x7766 addressing seg 0 -> 0x7866 in seg 0
  CuAssertIntEquals(tc, 0x66, seg0->data[0x106]);
  CuAssertIntEquals(tc, 0x78, seg0->data[0x107]);
  CuAssertIntEquals(tc, 0, offset1->u.addressed_segno);

  // 0xADDE addressing seg 0 -> 0xAEDE in seg 0
  CuAssertIntEquals(tc, 0xDE, seg1->data[0]);
  CuAssertIntEquals(tc, 0xAE, seg1->data[1]);
  CuAssertIntEquals(tc, 0, offset2->u.addressed_segno);

  // Offsets in seg 0 will be in seg 0 based at 0x100
  CuAssertIntEquals(tc, 0, offset0->holding_seg);
  CuAssertIntEquals(tc, 0x204, offset0->holding_offset);
  CuAssertIntEquals(tc, 0, offset1->holding_seg);
  CuAssertIntEquals(tc, 0x206, offset1->holding_offset);

  // Offsets in seg 1 will be in seg 2 based at 0
  CuAssertIntEquals(tc, 2, offset2->holding_seg);
  CuAssertIntEquals(tc, 0, offset2->holding_offset);

  delete_segment_map(module_to_program);
  delete_segment_list(module_segs);
  delete_fixups(module_offsets);
}

static void test_update_externals(CuTest* tc) {
  SEGMENT_LIST* module_segs = new_segment_list(CASE_INSENSITIVE);
  FIXUPS* ext = new_fixups();

  SEGNO segno0 = add_segment(module_segs, "SEG0", FALSE, FALSE, NO_GROUP);
  SEGMENT* seg0 = get_segment(module_segs, segno0);
  static const BYTE DATA0[] = { 0x00, 0x11, 0x00, 0x00, 0x44, 0x55, 0x00, 0x00 };
  write_segment(seg0, 0x100, DATA0, sizeof DATA0);

// int ext_insert(ext, segno, offset_pos, offset_len, sym_id, jump)

  int ext0 = add_external_fixup(ext, 0, 0x102, 1, FALSE);
  int ext1 = add_external_fixup(ext, 0, 0x106, 3, TRUE);

  SEGNO segno1 = add_segment(module_segs, "SEG1", FALSE, FALSE, NO_GROUP);
  SEGMENT* seg1 = get_segment(module_segs, segno1);
  static const BYTE DATA1[] = { 0x00, 0x00, 0xFA, 0xCE, 0x00, 0x00 };
  write_segment(seg1, 0, DATA1, sizeof DATA1);

  int ext2 = add_external_fixup(ext, 1, 0, 5, FALSE);
  int ext3 = add_external_fixup(ext, 1, 4, 7, TRUE);

  SEGMENT_MAP* module_to_program = new_segment_map(2);
  module_to_program->map[0].segno = 0;
  module_to_program->map[0].addr = 0x100;
  module_to_program->map[1].segno = 2;
  module_to_program->map[1].addr = 0;

  retarget_module_fixups_to_program(ext, module_segs, module_to_program, NULL, NULL, 0);

  // First will be in segment 0 but based at 0x100
  CuAssertIntEquals(tc, 0x00, seg0->data[0x102]);
  CuAssertIntEquals(tc, 0x00, seg0->data[0x103]);
  CuAssertIntEquals(tc, 0, fixup(ext, 0)->holding_seg);
  CuAssertIntEquals(tc, 0x202, fixup(ext, 0)->holding_offset);

  // Second will be in segment 0 but based at 0x100
  CuAssertIntEquals(tc, 0x00, seg0->data[0x106]);
  CuAssertIntEquals(tc, 0x00, seg0->data[0x107]);
  CuAssertIntEquals(tc, 0, fixup(ext, 1)->holding_seg);
  CuAssertIntEquals(tc, 0x206, fixup(ext, 1)->holding_offset);

  // Third will be in segment 2 based at 0
  CuAssertIntEquals(tc, 0x00, seg1->data[0]);
  CuAssertIntEquals(tc, 0x00, seg1->data[1]);
  CuAssertIntEquals(tc, 2, fixup(ext, 2)->holding_seg);
  CuAssertIntEquals(tc, 0, fixup(ext, 2)->holding_offset);

  // Fourth will be in segment 2 based at 0
  CuAssertIntEquals(tc, 0x00, seg1->data[4]);
  CuAssertIntEquals(tc, 0x00, seg1->data[5]);
  CuAssertIntEquals(tc, 2, fixup(ext, 3)->holding_seg);
  CuAssertIntEquals(tc, 4, fixup(ext, 3)->holding_offset);

  delete_segment_map(module_to_program);
  delete_segment_list(module_segs);
  delete_fixups(ext);
}

static void test_update_externals_id(CuTest* tc) {
  FIXUPS* ext = new_fixups();

  int ext0 = add_external_fixup(ext, 0, 0x102, 1, FALSE); // 0x3322 uses symbol 1
  int ext1 = add_external_fixup(ext, 0, 0x106, 0, TRUE);  // 0x7766 uses symbol 3
  int ext2 = add_external_fixup(ext, 1, 0, 2, FALSE); // 0xADDE uses symbol 5
  int ext3 = add_external_fixup(ext, 1, 4, 1, TRUE);  // 0xEFBE uses symbol 7

  VECTOR* symbol_map = new_vector(3);
  symbol_map->val[0] = 3;
  symbol_map->val[1] = 5;
  symbol_map->val[2] = 7;

  update_module_externals_symbol_id(ext, symbol_map);

  CuAssertIntEquals(tc, 5, fixup(ext, ext0)->u.ext.id);
  CuAssertIntEquals(tc, 3, fixup(ext, ext1)->u.ext.id);
  CuAssertIntEquals(tc, 7, fixup(ext, ext2)->u.ext.id);
  CuAssertIntEquals(tc, 5, fixup(ext, ext3)->u.ext.id);

  delete_vector(symbol_map);
  delete_fixups(ext);
}

static void test_move_data(CuTest* tc) {
  SEGMENT_LIST* dest = new_segment_list(CASE_INSENSITIVE);

  SEGNO p0 = add_segment(dest, "PSEG0", TRUE, FALSE, NO_GROUP);
  add_segment(dest, "PSEG1", FALSE, FALSE, 0);
  add_segment(dest, "MSEG0", FALSE, FALSE, 2);

  static const BYTE P0DATA[] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a };
  SEGMENT* pseg0 = get_segment(dest, p0);
  write_segment(pseg0, 0, P0DATA, sizeof P0DATA);
  CuAssertIntEquals(tc, 0, pseg0->lo);
  CuAssertIntEquals(tc, 11, pseg0->hi);

  SEGMENT_LIST* src = new_segment_list(CASE_INSENSITIVE);

  SEGNO m0 = add_segment(src, "MSEG0", FALSE, FALSE, 2);
  SEGMENT* mseg0 = get_segment(src, m0);
  static const BYTE M0DATA[] = { 0x90, 0x80, 0x70, 0x60, 0x50, 0x40, 0x30, 0x20 };
  write_segment(mseg0, 0x20, M0DATA, sizeof M0DATA);
  CuAssertIntEquals(tc, 0x20 + sizeof M0DATA, mseg0->hi);

  SEGNO m1 = add_segment(src, "PSEG0", TRUE, FALSE, NO_GROUP);
  SEGMENT* mseg1 = get_segment(src, m1);
  static const BYTE M1DATA[] = { 0x55, 0x44, 0x33, 0x22, 0x11, 0x00, 0xDD, 0xCC };
  write_segment(mseg1, 0x30, M1DATA, sizeof M1DATA);
  CuAssertIntEquals(tc, 0x30 + sizeof M1DATA, mseg1->hi);

  SEGMENT_MAP* seg_map = new_segment_map(2);
  seg_map->map[0].segno = 2;
  seg_map->map[0].addr = 0;
  seg_map->map[1].segno = 0;
  seg_map->map[1].addr = 0x120; // not used when appending to program segment 0

  move_segments_data(dest, src, seg_map, "dummy", 0);

  CuAssertIntEquals(tc, 3, segment_list_count(dest));

  SEGMENT* seg0 = get_segment(dest, 0);
  CuAssertPtrNotNull(tc, seg0);
  CuAssertIntEquals(tc, 0, seg0->lo);
  CuAssertIntEquals(tc, 0x10 + 0x30 + sizeof M1DATA, seg0->hi);
  CuAssertTrue(tc, memcmp(seg0->data, P0DATA, sizeof P0DATA) == 0);
  CuAssertTrue(tc, memcmp(seg0->data + 0x10 + 0x30, M1DATA, sizeof M1DATA) == 0);

  SEGMENT* seg1 = get_segment(dest, 1);
  CuAssertPtrNotNull(tc, seg1);
  CuAssertIntEquals(tc, 0, seg1->lo);
  CuAssertIntEquals(tc, 0, seg1->hi);

  SEGMENT* seg2 = get_segment(dest, 2);
  CuAssertPtrNotNull(tc, seg2);
  CuAssertIntEquals(tc, 0x20, seg2->lo);
  CuAssertIntEquals(tc, 0x20 + sizeof M0DATA, seg2->hi);
  CuAssertTrue(tc, memcmp(seg2->data + 0x20, M0DATA, sizeof M0DATA) == 0);

  CuAssertIntEquals(tc, 2, segment_list_count(src));
  CuAssertPtrEquals(tc, NULL, get_segment(src, 0));
  CuAssertPtrEquals(tc, NULL, get_segment(src, 1));

  delete_segment_map(seg_map);
  delete_segment_list(src);
  delete_segment_list(dest);
}

CuSuite* combine_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_segment_map);
  SUITE_ADD_TEST(suite, test_add_groups_empty);
  SUITE_ADD_TEST(suite, test_add_groups_non_empty);
  SUITE_ADD_TEST(suite, test_add_segments_empty);
  SUITE_ADD_TEST(suite, test_add_segments_no_groups);
  SUITE_ADD_TEST(suite, test_add_segments_with_groups);
  SUITE_ADD_TEST(suite, test_add_symbols_empty);
  SUITE_ADD_TEST(suite, test_add_symbols);
  SUITE_ADD_TEST(suite, test_update_offsets);
  SUITE_ADD_TEST(suite, test_update_externals);
  SUITE_ADD_TEST(suite, test_update_externals_id);
  SUITE_ADD_TEST(suite, test_move_data);
  return suite;
}

#endif // UNIT_TEST
