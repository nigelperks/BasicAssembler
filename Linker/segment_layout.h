// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// Information about the layout of constituent segments in a segment or group.

#pragma once

#include "utils.h"

// Description of the placement of a segment loaded from an object file
// within a segment or group.
struct layout_entry {
  char* segment_name;
  char* module_name;
  DWORD addr; // constituent segment's address within the segment whose layout
  DWORD size;
};

#define MAX_SEGMENT_MAP (64) // TODO: extendable

// The layout of a segment, listing the constituent segments loaded from object files.
struct segment_layout {
  struct layout_entry entries[MAX_SEGMENT_MAP];
  unsigned count;
};

void init_segment_layout(struct segment_layout *);
void clear_segment_layout(struct segment_layout *);
void add_segment_layout_entry(struct segment_layout *, const char* segment_name, const char* module_name, DWORD addr, DWORD size);
void append_segment_layout(struct segment_layout * destination, const struct segment_layout * source, const DWORD base);
