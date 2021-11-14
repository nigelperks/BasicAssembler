// Basic Linker
// Copyright (c) 2021 Nigel Perks
// Offset information for fixing up inter-segment access.

#ifndef OFFSET_INFO_H
#define OFFSET_INFO_H

#include "utils.h"
#include "symbol.h"

enum fixup_type {
  FT_OFFSET,  // location holds offset in segment, to be adjusted as segment gets combined
  FT_EXTERNAL,  // location holds zero, to be resolved with public symbol value or jump displacement
  FT_GROUP_ABSOLUTE_JUMP,  // location holds the target offset within the target group
  FT_SEGMENT,  // location to be filled with segment address of addressed segment
  FT_GROUP,  // location to be filled with segment address of addressed group
};

const char* fixup_type_name(int);

// Information about an offset that occurs somewhere among a program's segments.
// The other piece of data pertaining to an offset occurrence is the offset
// addressed by the occurrence: that is the value at the specified location,
// not a field of this metadata.
struct fixup {
  short type;
  SEGNO holding_seg;   // segment where the offset value is being held
  WORD holding_offset; // offset at which the offset value is being held
  unsigned short holding_len; // length of offset value (1 or 2 bytes)
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
};

typedef struct fixup FIXUP;

typedef struct {
  FIXUP* offsets;
  size_t allocated;
  size_t used;
} FIXUPS;

FIXUPS* new_fixups(void);
void delete_fixups(FIXUPS*);

size_t fixups_count(const FIXUPS*);
FIXUP* fixup(FIXUPS*, size_t index);

size_t segment_and_group_fixups(const FIXUPS*);

void append_fixups(FIXUPS* dest, FIXUPS* source);

FIXUP* add_offset_fixup(FIXUPS*, SEGNO holding_seg, WORD holding_offset,
    short holding_len, SEGNO addressed_seg);

int add_external_fixup(FIXUPS*, SEGNO holding_seg, WORD holding_offset,
    short holding_len, SYMBOL_ID, BOOL jump);

void add_group_absolute_jump_fixup(FIXUPS*, SEGNO holding_seg, WORD holding_offset,
    short holding_len, GROUPNO);

int add_segment_fixup(FIXUPS*, SEGNO holding_seg, WORD holding_offset,
    short holding_len, SEGNO addressed_seg);

int add_group_fixup(FIXUPS* p, SEGNO holding_seg, WORD holding_offset,
    short holding_len, GROUPNO addressed_groupno);

#endif // OFFSET_INFO_H