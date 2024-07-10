// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// Information about the layout of constituent segments in a segment or group.

#include <assert.h>
#include "segment_layout.h"

// Initialise an unused segment layout.
void init_segment_layout(struct segment_layout * layout) {
  layout->count = 0;
}

// Clear existing segment layout information, freeing its memory.
void clear_segment_layout(struct segment_layout * layout) {
  assert(layout != NULL);
  for (unsigned i = 0; i < layout->count; i++) {
    efree(layout->entries[i].segment_name);
    efree(layout->entries[i].module_name);
  }
  layout->count = 0;
}

// Add an entry describing a constituent segment to the layout information of a segment or group.
void add_segment_layout_entry(struct segment_layout * layout, const char* segment_name, const char* module_name, DWORD addr, DWORD size) {
  assert(layout != NULL);
  if (layout->count >= MAX_SEGMENT_MAP)
    fatal("internal error: segment map full\n");
  struct layout_entry * e = layout->entries + layout->count++;
  e->segment_name = estrdup(segment_name ? segment_name : "");
  e->module_name = estrdup(module_name ? module_name : "");
  e->addr = addr;
  e->size = size;
}

// Append the source segment layout information to the destination.
// For use when combining constituents of a public segment or group.
void append_segment_layout(struct segment_layout * dest, const struct segment_layout * src, const DWORD base) {
  for (const struct layout_entry * e = src->entries; e < src->entries + src->count; e++)
    add_segment_layout_entry(dest, e->segment_name, e->module_name, base + e->addr, e->size);
}
