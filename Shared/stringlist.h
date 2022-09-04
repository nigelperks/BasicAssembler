// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// String list.

// Reminder: the reason for coding in C rather than C++ and its library
// is to compile this code with my own C compiler one day.

#ifndef STRINGLIST_H

typedef struct {
  char* * strings;
  unsigned allocated;
  unsigned used;
} STRINGLIST;

STRINGLIST* new_stringlist(void);
void delete_stringlist(STRINGLIST*);

unsigned stringlist_count(const STRINGLIST*);
const char* stringlist_item(const STRINGLIST*, unsigned);
unsigned append_string(STRINGLIST*, const char*);
unsigned append_string_pointer(STRINGLIST*, char*);

#endif // STRINGLIST_H