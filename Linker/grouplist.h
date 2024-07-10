// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// List of groups.

#ifndef GROUPLIST_H
#define GROUPLIST_H

#include "utils.h"
#include "symbol.h"

// A group is formed in the linker by consolidating its member segments into one "main segment".
// So the identity of a group in the linker consists of its name and main segment reference.
// Group number is not part of this structure, but is an ordinal number, the position in the group list.
typedef struct {
  char* name;
  SEGNO main_segno;
} GROUP;

// List of groups defined in object files.
// Initially the list of groups from one object file.
// Group lists are merged during linking.
typedef struct {
  GROUP* groups;
  unsigned allocated;
  unsigned used;
  unsigned char case_sensitivity;
} GROUP_LIST;

GROUP_LIST* new_group_list(int case_sensitivity);
void delete_group_list(GROUP_LIST*);
GROUPNO group_list_count(const GROUP_LIST*);
BOOL group_defined(GROUP_LIST*, const char* name);
unsigned group_index(GROUP_LIST*, const char* name);
unsigned add_group(GROUP_LIST*, const char* name);
const char* group_name(const GROUP_LIST*, unsigned index);
SEGNO group_main_segno(const GROUP_LIST*, unsigned index);
void set_group_main_segno(const GROUP_LIST*, unsigned index, SEGNO);

#endif // GROUPLIST_H