// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// Information for fixing up inter-segment access.

#ifndef FIXUP_H
#define FIXUP_H

#include "utils.h"
#include "symbol.h"

// A fixup is information about a segment address or offset address.
// The fixup allows the segment address or offset address to be adjusted during linking.
// For example if program segment A is combined with program segment B,
// by appending A to B, to be addressed by the same segment register,
// then offsets into A must be increased by the size of B.

enum fixup_type {
  FT_OFFSET,  // location holds offset in segment, to be adjusted as segment gets combined
  FT_EXTERNAL,  // location holds zero, to be resolved with public symbol value or jump displacement
  FT_GROUP_ABSOLUTE_JUMP,  // location holds the target offset within the target group
  FT_SEGMENT,  // location to be filled with physical segment address of segment (load time)
  FT_GROUP,  // location to be filled with physical segment address of group (load time)
};

const char* fixup_type_name(int);

typedef struct fixup {
  short type;
  SEGNO holding_seg;   // segment where the offset value is being held
  WORD holding_offset; // offset at which the offset value is being held
  union {
    // FT_OFFSET
    SEGNO addressed_segno; // segment addressed by the offset
    // FT_EXTERNAL
    struct {
      SYMBOL_ID id;
      BOOL jump;
    } ext;
    // FT_GROUP_ABSOLUTE_JUMP
    GROUPNO groupno;
    // FT_SEGMENT
    struct {
      DWORD addressed_base;
      SEGNO addressed_segno;
      WORD holding_seg_addr;
    } seg;
    // FT_GROUP
    struct {
      SEGNO addressed_groupno;
      WORD holding_seg_addr;
    } group;
  } u;
} FIXUP;

typedef struct {
  FIXUP* offsets;
  DWORD allocated;
  DWORD used;
} FIXUPS;

FIXUPS* new_fixups(void);
void delete_fixups(FIXUPS*);

DWORD fixups_count(const FIXUPS*);
FIXUP* fixup(FIXUPS*, DWORD index);

DWORD segment_and_group_fixups(const FIXUPS*);

void append_fixups(FIXUPS* dest, FIXUPS* source);

FIXUP* add_offset_fixup(FIXUPS*, SEGNO holding_seg, WORD holding_offset, SEGNO addressed_seg);

int add_external_fixup(FIXUPS*, SEGNO holding_seg, WORD holding_offset, SYMBOL_ID, BOOL jump);

void add_group_absolute_jump_fixup(FIXUPS*, SEGNO holding_seg, WORD holding_offset, GROUPNO);

int add_segment_fixup(FIXUPS*, SEGNO holding_seg, WORD holding_offset, SEGNO addressed_seg);

int add_group_fixup(FIXUPS* p, SEGNO holding_seg, WORD holding_offset, GROUPNO addressed_groupno);

#endif // FIXUP_H