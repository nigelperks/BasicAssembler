// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// The logic for processing one object module,
// using the mechanisms of OFILE and SEGMENTS.

/*

OBJECT MODULE STRUCTURE
-----------------------

OBJ_BEGIN_GROUP         ; begin group definition
    OBJ_ORDINAL byte    ; group number
    NAME string         ; group name
OBJ_END_GROUP           ; end group definition

OBJ_BEGIN_SEGMENT       ; begin segment definition
    OBJ_ORDINAL byte    ; segment number
    OBJ_NAME string     ; segment name
    OBJ_GROUPNO byte    ; (optional) segment's group number
    OBJ_PUBLIC          ; (optional) the segment is public
    OBJ_STACK           ; (optional) the segment is a stack segment
    OBJ_P2ALIGN byte    ; (optional) alignment of segment in image
OBJ_END_SEGMENT         ; end segment definition

OBJ_OPEN_SEGMENT        ; open segment to add code and data to it

    OBJ_CODE data           ; segment code (usually one instruction)
    OBJ_DS data             ; segment data
    OBJ_DB byte             ; segment data byte
    OBJ_DW word             ; segment data word
    OBJ_DD dword            ; segment data dword
    OBJ_DQ qword            ; segment data qword
    OBJ_DT qword            ; segment data qword (sic)
    OBJ_SPACE word          ; allocate uninitialised space in segment
    OBJ_ORG word            ; set segment location counter
    OBJ_P2ALIGN byte        ; align next code/data on given power of 2

    OBJ_BEGIN_OFFSET        ; begin offset fixup
        OBJ_POS word        ; position in segment of offset to be fixed up
        OBJ_SEGNO byte      ; segment to which the offset belongs
    OBJ_END_OFFSET          ; end offset fixup

    OBJ_BEGIN_EXTRN_USE     ; EXTRN requirement
        OBJ_POS word        ; position in segment where external's offset should be placed
        OBJ_ID word         ; external symbol ID appearing in EXTRN_DEF object
        OBJ_JUMP            ; (optional) the use of the external is a jump to it: fix up with relative displacement
    OBJ_END_EXTRN_USE       ; end EXTRN requirement

    OBJ_BEGIN_GROUP_ABS_JUMP    ; begin fixup of jump to numeric offset in group
        OBJ_POS word            ; position in segment of jump offset to be fixed up
        OBJ_GROUPNO byte        ; group to which the offset belongs
    OBJ_END_GROUP_ABS_JUMP      ; end absolute group jump fixup

    OBJ_BEGIN_SEG_ADDR      ; begin fixup of segment address of segment
        OBJ_POS word        ; position in segment where segment address should be placed
        OBJ_SEGNO byte      ; segment number whose segment address to use
    OBJ_END_SEG_ADDR        ; end fixup of segment address

    OBJ_BEGIN_GROUP_ADDR    ; begin fixup of segment address of group
        OBJ_POS word        ; position in segment where segment address should be placed
        OBJ_GROUPNO byte    ; group number whose segment address to use
    OBJ_END_GROUP_ADDR      ; end fixup of group segment address

OBJ_CLOSE_SEGMENT       ; close segment

OBJ_CASED               ; (optional) indicate case-sensitive symbols

OBJ_BEGIN_EXTRN_DEF     ; begin definition of external symbol to be imported
    OBJ_ID word         ; external symbol ID
    OBJ_NAME string     ; symbol name
    OBJ_SEGNO byte      ; segment to which symbol belongs
OBJ_END_EXTRN_DEF       ; end definition of external symbol to be imported

OBJ_BEGIN_PUBLIC        ; begin public symbol (public symbol table entry)
    OBJ_NAME string     ; symbol name
    OBJ_SEGNO byte      ; segment containing the label
    OBJ_OFFSET word     ; offset in segment: value of label
OBJ_END_PUBLIC          ; end public symbol

OBJ_BEGIN_START         ; begin specification of program start (entry point)
    OBJ_SEGNO byte      ; starting segment
    OBJ_OFFSET word     ; starting offset
OBJ_END_START           ; end specification of program start

*/

#include <string.h>
#include <assert.h>
#include "module.h"

// Verbosity level at which object records are printed as they are processed.
#define VERBOSE_OBJECTS (3)

// Current state of object file processing.
typedef struct {
  const char* module_name; // module name for error-reporting
  unsigned pos; // current position in object file (record number in OFILE)
  int segno; // current open segment number
  SEGMENT* seg; // current open segment
  int module_casing; // case-sensitivity of the module as flagged within the module (default insensitive)
} STATE;

// Initialise processing state when beginning to process an object file.
static void init_state(STATE* state, const char* module_name) {
  state->module_name = module_name;
  state->pos = 0;
  state->segno = NO_SEG;
  state->seg = NULL;
  state->module_casing = CASE_INSENSITIVE;
}

// Process a record at top level of object file (not within another record).
static void process_root_record(STATE*, const OFILE*, SEGMENTED*, int verbose);

// Process an object file into a SEGMENTED structure of segments, groups, symbols, fixups, etc.
SEGMENTED* build_module_segments(const OFILE* ofile, int case_sensitivity, int verbose, const char* module_name) {
  SEGMENTED* module = new_segmented(module_name, case_sensitivity);
  STATE state;

  init_state(&state, module_name);

  if (verbose)
    puts("Build segments");

  for (state.pos = 0; state.pos < ofile->used; state.pos++)
    process_root_record(&state, ofile, module, verbose);

  if (state.module_casing != case_sensitivity)
    fatal("case sensitivity mismatch between linker options and module: %s\n", module_name);

  // Once all segments have been loaded from the file,
  // their size is known and can be recorded in segment and image layout
  // for the map file.
  for (SEGNO i = 0; i < module->segs->used; i++) {
    if (module->segs->seg[i])
      initial_segment_layout(module->segs->seg[i], module_name);
  }

  return module;
}

static void define_group(STATE*, const OFILE*, SEGMENTED*, int verbose);
static void define_segment(STATE*, const OFILE*, SEGMENTED*, int verbose);
static void define_external(STATE*, const OFILE*, SEGMENTED*, int verbose);
static void define_public(STATE*, const OFILE*, SEGMENTED*, int verbose);
static void process_segment_fragment(STATE*, const OFILE*, SEGMENTED*, int verbose);
static void define_start(STATE*, const OFILE*, SEGMENTED*, int verbose);

// Process a record at top level of object file (not within another record).
static void process_root_record(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;

  if (verbose >= VERBOSE_OBJECTS)
    print_orec(rec);

  switch (rec->type) {
    case OBJ_BEGIN_GROUP:
      define_group(state, ofile, segs, verbose);
      break;
    case OBJ_BEGIN_SEGMENT:
      define_segment(state, ofile, segs, verbose);
      break;
    case OBJ_OPEN_SEGMENT:
      process_segment_fragment(state, ofile, segs, verbose);
      break;
    case OBJ_BEGIN_EXTRN_DEF:
      define_external(state, ofile, segs, verbose);
      break;
    case OBJ_BEGIN_PUBLIC:
      define_public(state, ofile, segs, verbose);
      break;
    case OBJ_BEGIN_START:
      define_start(state, ofile, segs, verbose);
      break;
    case OBJ_CASED:
      state->module_casing = CASE_SENSITIVE;
      break;
    default:
      fatal("%s: unexpected root object record type: %d\n", state->module_name, rec->type);
      break;
  }
}

// Process group definition: group number, name.
static void define_group(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;
  assert(rec->type == OBJ_BEGIN_GROUP);

  GROUPNO groupno = NO_GROUP;
  char name[32] = "";

  for (state->pos++; state->pos < ofile->used; state->pos++) {
    rec = ofile->recs + state->pos;

    if (verbose >= VERBOSE_OBJECTS)
      print_orec(rec);

    switch (rec->type) {
      case OBJ_END_GROUP: {
        if (groupno == NO_SEG)
          fatal("group definition lacks ordinal\n");
        if (groupno < group_list_count(segs->groups))
          fatal("group redefined\n");
        if (groupno != group_list_count(segs->groups))
          fatal("unexpected ordinal in group definition\n");
        if (name[0] == '\0')
          fatal("group definition lacks name\n");
        if (group_defined(segs->groups, name))
          fatal("duplicate group name: %s\n", name);
        add_group(segs->groups, name);
        return;
      }
      case OBJ_ORDINAL:
        groupno = (GROUPNO) objbyte(rec);
        break;
      case OBJ_NAME:
        if (rec->u.data.size > sizeof name - 1)
          fatal("group name too long\n");
        memcpy(name, rec->u.data.buf, rec->u.data.size);
        name[rec->u.data.size] = '\0';
        break;
      default:
        fatal("invalid object record type in group definition: %d\n", rec->type);
        break;
    }
  }

  fatal("group definition open at end of file\n");
}

// Process segment definition: segment number, name, attributes.
static void define_segment(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;
  assert(rec->type == OBJ_BEGIN_SEGMENT);

  SEGNO segno = NO_SEG;
  char name[32] = "";
  GROUPNO groupno = NO_GROUP;
  BOOL public = FALSE;
  BOOL stack = FALSE;
  unsigned p2align = 4;

  for (state->pos++; state->pos < ofile->used; state->pos++) {
    rec = ofile->recs + state->pos;

    if (verbose >= VERBOSE_OBJECTS)
      print_orec(rec);

    switch (rec->type) {
      case OBJ_END_SEGMENT: {
        if (segno == NO_SEG)
          fatal("segment definition lacks ordinal\n");
        if (segno < 0)
          fatal("segment definition segno = %d < 0\n", (int)segno);
        if (segno < segment_list_count(segs->segs))
          fatal("segment %d: %s redefined as %s\n", (int)segno, segment_name(segs->segs, segno), name[0] ? name : "(no name)");
        if (segno != segment_list_count(segs->segs))
          fatal("unexpected ordinal in segment definition\n");
        if (name[0] == '\0')
          fatal("segment definition lacks name\n");
        if (segment_defined(segs->segs, name))
          fatal("duplicate segment name: %s\n", name);
        if (groupno != NO_GROUP && groupno >= group_list_count(segs->groups))
          fatal("segment: %s: group number out of range: %u\n", name, groupno);
        add_segment(segs->segs, name, public, stack, groupno);
        set_segment_p2align(segs->segs, segno, p2align);
        return;
      }
      case OBJ_ORDINAL:
        segno = (SEGNO) objbyte(rec);
        break;
      case OBJ_NAME:
        if (rec->u.data.size > sizeof name - 1)
          fatal("segment name too long\n");
        memcpy(name, rec->u.data.buf, rec->u.data.size);
        name[rec->u.data.size] = '\0';
        break;
      case OBJ_GROUPNO:
        groupno = (GROUPNO) objbyte(rec);
        break;
      case OBJ_PUBLIC:
        public = TRUE;
        break;
      case OBJ_STACK:
        stack = TRUE;
        break;
      case OBJ_P2ALIGN:
        p2align = objbyte(rec);
        break;
      default:
        fatal("invalid object record type in segment definition: %d\n", rec->type);
        break;
    }
  }

  fatal("segment definition open at end of file\n");
}

static void process_offset_info(STATE*, const OFILE*, SEGMENTED*, int verbose);
static void process_extern_use(STATE*, const OFILE*, SEGMENTED*, int verbose);
static void process_group_absolute_jump(STATE*, const OFILE*, SEGMENTED*, int verbose);
static void process_segment_address_use(STATE*, const OFILE*, SEGMENTED*, int verbose);
static void process_group_address_use(STATE*, const OFILE*, SEGMENTED*, int verbose);

static void print_data(const BYTE* data, size_t size) {
  while (size--)
    printf("%02x ", *data++);
}

static void emit_num(SEGMENT*, QWORD val, unsigned size);

// Process a segment "fragment" in the object file,
// corresponding to a source region SEGMENT ... ENDS.
// The segment being opened must have been defined already in BEGIN_SEGMENT ... END_SEGMENT.
static void process_segment_fragment(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;
  assert(rec->type == OBJ_OPEN_SEGMENT);
  if (objbyte(rec) >= segment_list_count(segs->segs))
    fatal("invalid ordinal segment number: %u\n", objbyte(rec));
  state->segno = objbyte(rec);
  state->seg = get_segment(segs->segs, state->segno);

  for (state->pos++; state->pos < ofile->used; state->pos++) {
    rec = ofile->recs + state->pos;

    if (verbose >= VERBOSE_OBJECTS)
      print_orec(rec);

    switch (rec->type) {
      case OBJ_CLOSE_SEGMENT:
        if (objbyte(rec) != state->segno)
          fatal("open/close segment number mismatch\n");
        if (seg_hi(state->seg) && seg_space(state->seg))
          fatal("segment has both initialised and uninitialised data: %u %s\n",
                (unsigned)state->segno, seg_name(state->seg));
        state->segno = NO_SEG;
        state->seg = NULL;
        return;
      case OBJ_CODE:
      case OBJ_DS:
        load_segment_data(state->seg, rec->u.data.buf, rec->u.data.size);
        break;
      case OBJ_DB:
        emit_num(state->seg, objbyte(rec), 1);
        break;
      case OBJ_DW:
        emit_num(state->seg, objword(rec), 2);
        break;
      case OBJ_DD:
        emit_num(state->seg, objdword(rec), 4);
        break;
      case OBJ_DQ:
        emit_num(state->seg, objqword(rec), 8);
        break;
      case OBJ_DT:
        emit_num(state->seg, objqword(rec), 10);
        break;
      case OBJ_SPACE:
        load_segment_space(state->seg, objword(rec));
        break;
      case OBJ_ORG:
        state->seg->pc = objword(rec);
        break;
      case OBJ_P2ALIGN:
        if (objbyte(rec) > seg_p2align(state->seg))
          fatal("cannot align data to 2^%u in segment '%s' of alignment 2^%u\n",
                (unsigned) objbyte(rec), seg_name(state->seg), (unsigned) seg_p2align(state->seg));
        state->seg->pc = p2aligned(state->seg->pc, objbyte(rec));
        break;
      case OBJ_BEGIN_OFFSET:
        process_offset_info(state, ofile, segs, verbose);
        break;
      case OBJ_BEGIN_EXTRN_USE:
        process_extern_use(state, ofile, segs, verbose);
        break;
      case OBJ_BEGIN_GROUP_ABS_JUMP:
        process_group_absolute_jump(state, ofile, segs, verbose);
        break;
      case OBJ_BEGIN_SEG_ADDR:
        process_segment_address_use(state, ofile, segs, verbose);
        break;
      case OBJ_BEGIN_GROUP_ADDR:
        process_group_address_use(state, ofile, segs, verbose);
        break;
      default:
        fatal("invalid object record type in segment fragment: %d\n", rec->type);
        break;
    }
  }

  fatal("segment fragment open at end of file\n");
}

// Emit number, of specified size in bytes, to segment being loaded.
static void emit_num(SEGMENT* seg, QWORD val, unsigned size) {
  BYTE buf[10];
  assert(size <= sizeof buf);
  unsigned i = 0;
  while (size--) {
    buf[i++] = val & 0xff;
    val >>= 8;
  }
  load_segment_data(seg, buf, i);
}

// Within segment fragment, read in fixup of type FT_OFFSET:
// an offset to be adjusted when the segment into which it offsets is combined:
// - offset position = location in segment being loaded of the offset to be adjusted
// - segment number = number of segment that the offset is an offset into
// I call the segment holding the offset the "holding segment",
// the segment that the offset is an offset into the "addressed segment".
static void process_offset_info(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;
  assert(rec->type == OBJ_BEGIN_OFFSET);

  WORD offset_pos = 0;
  BOOL have_pos = FALSE;
  SEGNO offset_segno = NO_SEG;

  for (state->pos++; state->pos < ofile->used; state->pos++) {
    rec = ofile->recs + state->pos;

    if (verbose >= VERBOSE_OBJECTS)
      print_orec(rec);

    switch (rec->type) {
      case OBJ_END_OFFSET:
        if (!have_pos)
          fatal("offset information does not specify position\n");
        if (offset_segno == NO_SEG)
          fatal("offset information does not specify segment number\n");
        add_offset_fixup(segs->fixups, state->segno, offset_pos, offset_segno);
        return;
      case OBJ_POS:
        offset_pos = objword(rec);
        have_pos = TRUE;
        break;
      case OBJ_SEGNO:
        offset_segno = objbyte(rec);
        if (offset_segno < 0 || offset_segno >= segment_list_count(segs->segs))
          fatal("undefined segment number: %d\n", (int)offset_segno);
        break;
      default:
        fatal("invalid object record type in offset information: %d\n", rec->type);
        break;
    }
  }

  fatal("end of file: unterminated offset information\n");
}

// Within segment fragment, read in fixup of type FT_EXTERNAL:
// a location to be resolved with a public symbol value or jump displacement:
// - offset position = location in segment being loaded of the value to be filled in
// - external symbol ID = ID of external symbol declared in this object file: the symbol whose value to use
// - whether the offset used should be PC-relative for a jump, or absolute for data
static void process_extern_use(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;
  assert(rec->type == OBJ_BEGIN_EXTRN_USE);

  WORD offset_pos = 0;
  BOOL have_pos = FALSE;
  int ext_id = NO_SYM;
  BOOL jump = FALSE;

  for (state->pos++; state->pos < ofile->used; state->pos++) {
    rec = ofile->recs + state->pos;

    if (verbose >= VERBOSE_OBJECTS)
      print_orec(rec);

    switch (rec->type) {
      case OBJ_END_EXTRN_USE:
        if (!have_pos)
          fatal("external use does not specify position\n");
        if (ext_id == NO_SYM)
          fatal("external use does not specify symbol ID\n");
        if (ext_id < 0 || ext_id >= (int) sym_count(segs->st))
          fatal("external use ID out of range\n");
        add_external_fixup(segs->fixups, state->segno, offset_pos, ext_id, jump);
        return;
      case OBJ_POS:
        offset_pos = objword(rec);
        have_pos = TRUE;
        break;
      case OBJ_ID:
        ext_id = objword(rec);
        break;
      case OBJ_JUMP:
        jump = TRUE;
        break;
      default:
        fatal("invalid object record type in extern use: %d\n", rec->type);
        break;
    }
  }

  fatal("end of file: unterminated extern use\n");
}

// Process external symbol declaration: ID, name, segment.
// The external symbol must be resolved to a public symbol in the same public segment.
static void define_external(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;
  assert(rec->type == OBJ_BEGIN_EXTRN_DEF);

  int id = NO_SYM;
  char name[32] = "";
  SEGNO segno = NO_SEG;

  for (state->pos++; state->pos < ofile->used; state->pos++) {
    rec = ofile->recs + state->pos;

    if (verbose >= VERBOSE_OBJECTS)
      print_orec(rec);

    switch (rec->type) {
      case OBJ_END_EXTRN_DEF: {
        if (id == NO_SYM)
          fatal("%s: external symbol definition lacks ID\n", state->module_name);
        if (name[0] == '\0')
          fatal("%s: external symbol definition lacks name\n", state->module_name);
        if (sym_lookup(segs->st, name) != NO_SYM)
          fatal("%s: duplicate external symbol: %s\n", state->module_name, name);
        if (sym_next_id(segs->st) != id)
          fatal("%s: external symbol out of sequence: %s\n", state->module_name, name);
        if (segno == NO_SEG)
          fatal("%s: external symbol definition lacks segment\n", state->module_name);
        sym_insert_extern(segs->st, name, segno);
        return;
      }
      case OBJ_ID:
        id = objword(rec);
        break;
      case OBJ_NAME:
        if (rec->u.data.size > sizeof name - 1)
          fatal("external name too long\n");
        memcpy(name, rec->u.data.buf, rec->u.data.size);
        name[rec->u.data.size] = '\0';
        break;
      case OBJ_SEGNO:
        segno = objbyte(rec);
        if (segno >= segment_list_count(segs->segs))
          fatal("undefined segment number: %u\n", (unsigned) segno);
        break;
      default:
        fatal("%s: invalid object record type in external symbol definition: %d\n",
              state->module_name, rec->type);
        break;
    }
  }

  fatal("external symbol definition open at end of file\n");
}

// Process public symbol definition: name, segment, offset value.
// The external symbol must be resolved to a public symbol in the same public segment.
static void define_public(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;
  assert(rec->type == OBJ_BEGIN_PUBLIC);

  char name[32] = "";
  int segno = NO_SEG;
  WORD offset = 0;
  BOOL have_offset = FALSE;

  for (state->pos++; state->pos < ofile->used; state->pos++) {
    rec = ofile->recs + state->pos;

    if (verbose >= VERBOSE_OBJECTS)
      print_orec(rec);

    switch (rec->type) {
      case OBJ_END_PUBLIC: {
        if (name[0] == '\0')
          fatal("%s: public symbol definition lacks name\n", state->module_name);
        if (segno == NO_SEG)
          fatal("%s: public symbol definition lacks segment\n", state->module_name);
        if (!have_offset)
          fatal("%s: public symbol definition lacks offset\n", state->module_name);
        if (sym_lookup(segs->st, name) != NO_SYM)
          fatal("%s: duplicate public symbol: %s\n", state->module_name, name);
        sym_insert_public(segs->st, name, segno, offset);
        return;
      }
      case OBJ_NAME:
        if (rec->u.data.size > sizeof name - 1)
          fatal("public name is too long\n");
        memcpy(name, rec->u.data.buf, rec->u.data.size);
        name[rec->u.data.size] = '\0';
        break;
      case OBJ_SEGNO:
        segno = objbyte(rec);
        if (segno >= segment_list_count(segs->segs))
          fatal("undefined segment number: %u\n", (unsigned) segno);
        break;
      case OBJ_OFFSET:
        offset = objword(rec);
        have_offset = TRUE;
        break;
      default:
        fatal("%s: invalid object record type in public symbol definition: %d\n",
              state->module_name, rec->type);
        break;
    }
  }

  fatal("public symbol definition open at end of file\n");
}

// Load the execution start value, as specified by END: segment, offset.
static void define_start(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;
  assert(rec->type == OBJ_BEGIN_START);

  SEGNO segno = NO_SEG;
  WORD offset = 0;
  BOOL have_offset = FALSE;

  for (state->pos++; state->pos < ofile->used; state->pos++) {
    rec = ofile->recs + state->pos;

    if (verbose >= VERBOSE_OBJECTS)
      print_orec(rec);

    switch (rec->type) {
      case OBJ_END_START: {
        if (segno == NO_SEG)
          fatal("%s: start symbol definition lacks segment\n", state->module_name);
        if (!have_offset)
          fatal("%s: start symbol definition lacks offset\n", state->module_name);
        segs->start.segno = segno;
        segs->start.offset = offset;
        return;
      }
      case OBJ_SEGNO:
        segno = objbyte(rec);
        if (segno >= segment_list_count(segs->segs))
          fatal("undefined segment number: %u\n", (unsigned) segno);
        break;
      case OBJ_OFFSET:
        offset = objword(rec);
        have_offset = TRUE;
        break;
      default:
        fatal("%s: invalid object record type in start symbol definition: %d\n",
              state->module_name, rec->type);
        break;
    }
  }

  fatal("start symbol definition open at end of file\n");
}

// Within segment fragment, read in fixup of type FT_GROUP_ABSOLUTE_JUMP,
// to resolve a jump to an absolute offset in a group, of the form:
// JMP CS:1234h
// The offset in the linked executable must be PC-relative.
// Load:
// - position of the value in the segment being loaded
// - group number.
static void process_group_absolute_jump(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;
  assert(rec->type == OBJ_BEGIN_GROUP_ABS_JUMP);

  WORD offset_pos = 0;
  BOOL have_pos = FALSE;
  GROUPNO groupno = NO_GROUP;

  for (state->pos++; state->pos < ofile->used; state->pos++) {
    rec = ofile->recs + state->pos;

    if (verbose >= VERBOSE_OBJECTS)
      print_orec(rec);

    switch (rec->type) {
      case OBJ_END_GROUP_ABS_JUMP:
        if (!have_pos)
          fatal("group absolute jump does not specify position\n");
        if (groupno == NO_GROUP)
          fatal("group absolute jump does not specify group number\n");
        if (groupno < 0 || groupno >= group_list_count(segs->groups))
          fatal("group number out of range\n");
        add_group_absolute_jump_fixup(segs->fixups, state->segno, offset_pos, groupno);
        return;
      case OBJ_POS:
        offset_pos = objword(rec);
        have_pos = TRUE;
        break;
      case OBJ_GROUPNO:
        groupno = objbyte(rec);
        break;
      default:
        fatal("invalid object record type in group absolute jump: %d\n", rec->type);
        break;
    }
  }

  fatal("end of file: unterminated group absolute jump\n");
}

// Within segment fragment, read in fixup of type FT_SEGMENT:
// location to be filled with segment address of addressed segment:
// - position of the value in the segment being loaded
// - segment number of the segment whose address to use.
static void process_segment_address_use(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;
  assert(rec->type == OBJ_BEGIN_SEG_ADDR);

  WORD pos = 0;
  BOOL have_pos = FALSE;
  SEGNO segno = NO_SEG;

  for (state->pos++; state->pos < ofile->used; state->pos++) {
    rec = ofile->recs + state->pos;

    if (verbose >= VERBOSE_OBJECTS)
      print_orec(rec);

    switch (rec->type) {
      case OBJ_END_SEG_ADDR:
        if (!have_pos)
          fatal("segment address use does not specify position\n");
        if (segno == NO_SEG)
          fatal("segment address use does not specify segment number\n");
        add_segment_fixup(segs->fixups, state->segno, pos, segno);
        return;
      case OBJ_POS:
        pos = objword(rec);
        have_pos = TRUE;
        break;
      case OBJ_SEGNO:
        if (objbyte(rec) >= segment_list_count(segs->segs))
          fatal("undefined segment number: %u\n", (unsigned)objbyte(rec));
        segno = objbyte(rec);
        break;
      default:
        fatal("invalid object record type in segment address use: %d\n", rec->type);
        break;
    }
  }

  fatal("end of file: unterminated segment address use\n");
}

// Within segment fragment, read in fixup of type FT_GROUP:
// location to be filled with segment address of addressed group:
// - position of the value in the segment being loaded
// - group number of the group whose segment address to use.
static void process_group_address_use(STATE* state, const OFILE* ofile, SEGMENTED* segs, int verbose) {
  assert(state != NULL);
  assert(ofile != NULL);
  assert(segs != NULL);
  assert(state->pos < ofile->used);

  const OREC* rec = ofile->recs + state->pos;
  assert(rec->type == OBJ_BEGIN_GROUP_ADDR);

  WORD pos = 0;
  BOOL have_pos = FALSE;
  GROUPNO groupno = NO_GROUP;

  for (state->pos++; state->pos < ofile->used; state->pos++) {
    rec = ofile->recs + state->pos;

    if (verbose >= VERBOSE_OBJECTS)
      print_orec(rec);

    switch (rec->type) {
      case OBJ_END_GROUP_ADDR:
        if (!have_pos)
          fatal("group address use does not specify position\n");
        if (groupno == NO_GROUP)
          fatal("group address use does not specify group number\n");
        add_group_fixup(segs->fixups, state->segno, pos, groupno);
        return;
      case OBJ_POS:
        pos = objword(rec);
        have_pos = TRUE;
        break;
      case OBJ_GROUPNO:
        if (objbyte(rec) >= group_list_count(segs->groups))
          fatal("undefined group number: %u\n", (unsigned)objbyte(rec));
        groupno = objbyte(rec);
        break;
      default:
        fatal("invalid object record type in group address use: %d\n", rec->type);
        break;
    }
  }

  fatal("end of file: unterminated group address use\n");
}
