// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// String list.

#include <stdlib.h>
#include <assert.h>
#include "stringlist.h"
#include "utils.h"

STRINGLIST* new_stringlist(void) {
  STRINGLIST* p = emalloc(sizeof *p);
  p->strings = NULL;
  p->allocated = 0;
  p->used = 0;
  return p;
}

void delete_stringlist(STRINGLIST* p) {
  if (p) {
    for (unsigned i = 0; i < p->used; i++)
      efree(p->strings[i]);
    efree(p->strings);
    efree(p);
  }
}

unsigned stringlist_count(STRINGLIST* list) {
  assert(list != NULL);
  return list->used;
}

const char* stringlist_item(STRINGLIST* list, unsigned i) {
  assert(list != NULL);
  assert(i < list->used);
  assert(list->strings != NULL);
  return list->strings[i];
}

unsigned append_string(STRINGLIST* list, const char* s) {
  assert(list != NULL);
  assert(list->used <= list->allocated);
  if (list->used == list->allocated) {
    unsigned new_allocated = (list->allocated) ? 2 * list->allocated : 8;
    char* * t = erealloc(list->strings, new_allocated * sizeof (list->strings[0]));
    assert(t != NULL);
    list->strings = t;
    list->allocated = new_allocated;
  }
  assert(list->used < list->allocated);
  unsigned i = list->used++;
  list->strings[i] = estrdup(s);
  return i;
}