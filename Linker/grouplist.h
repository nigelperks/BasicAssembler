// Basic Linker
// Copyright (c) 2021 Nigel Perks
// List of groups.

#ifndef GROUPLIST_H
#define GROUPLIST_H

#include "utils.h"
#include "symbol.h"

typedef struct {
  char* name;
  SEGNO main_segno;
} GROUP;

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