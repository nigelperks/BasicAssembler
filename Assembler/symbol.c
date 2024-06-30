// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Assembler symbol table.

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "symbol.h"

#define NO_SEG (-1)

static SYMBOL* new_symbol(const char* name, BYTE type) {
  SYMBOL* sym = emalloc(sizeof *sym);
  sym->name = estrdup(name);
  sym->type = type;
  sym->defined = UNDEFINED;
  return sym;
}

static void delete_symbol(SYMBOL* sym) {
  if (sym) {
    efree(sym->name);
    efree(sym);
  }
}

SYMTAB* new_symbol_table(bool case_sensitive) {
  SYMTAB* st = emalloc(sizeof *st);
  st->sym = NULL;
  st->allocated = 0;
  st->used = 0;
  st->next_external_id = 0;
  st->locals = 0;
  st->case_sensitive = case_sensitive;
  return st;
}

void delete_symbol_table(SYMTAB* st) {
  if (st) {
    for (unsigned i = 0; i < st->used; i++)
      delete_symbol(st->sym[i]);
    efree(st->sym);
    efree(st);
  }
}

SYMBOL* sym_lookup(SYMTAB* st, const char* name) {
  unsigned i;
  assert(st != NULL);
  assert(name != NULL);
  if (st->case_sensitive) {
    for (i = 0; i < st->used; i++) {
      if (strcmp(st->sym[i]->name, name) == 0)
        return st->sym[i];
    }
  }
  else {
    for (i = 0; i < st->used; i++) {
      if (_stricmp(st->sym[i]->name, name) == 0)
        return st->sym[i];
    }
  }
  return NULL;
}

static SYMBOL* insert(SYMTAB* st, const char* name, int type) {
  assert(st != NULL);
  assert(name != NULL);

  assert(st->used <= st->allocated);
  if (st->used == st->allocated) {
    st->allocated = st->allocated ? 2 * st->allocated : 64;
    st->sym = erealloc(st->sym, st->allocated * sizeof st->sym[0]);
  }

  assert(st->used < st->allocated);
  int id = st->used++;
  return st->sym[id] = new_symbol(name, type);
}

SYMBOL* sym_insert_unknown(SYMTAB* st, const char* name) {
  return insert(st, name, SYM_UNKNOWN);
}

void sym_init_relative(SYMBOL* sym) {
  assert(sym != NULL);
  assert(sym->type == SYM_UNKNOWN || sym->type == SYM_RELATIVE);
  sym->type = SYM_RELATIVE;
  sym->u.rel.val = 0;
  sym->u.rel.seg = NO_SEG;
  sym->u.rel.public = PRIVATE;
  sym->u.rel.external_id = -1;
  sym->u.rel.data_size = 0;
}

SYMBOL* sym_insert_relative(SYMTAB* st, const char* name) {
  SYMBOL* sym = insert(st, name, SYM_RELATIVE);
  sym_init_relative(sym);
  return sym;
}

SYMBOL* sym_insert_external(SYMTAB* st, const char* name, SEGNO seg) {
  assert(st != NULL);
  assert(name != NULL);
  assert(seg != NO_SEG);

  SYMBOL* sym = insert(st, name, SYM_RELATIVE);
  sym->defined = DEFINED;
  sym->u.rel.val = 0;
  sym->u.rel.seg = seg;
  sym->u.rel.public = PRIVATE;
  sym->u.rel.external_id = st->next_external_id++;
  assert(sym->u.rel.external_id >= 0);
  sym->u.rel.data_size = 0;
  return sym;
}

SYMBOL* sym_insert_absolute(SYMTAB* st, const char* name) {
  return insert(st, name, SYM_ABSOLUTE);
}

SYMBOL* sym_insert_section(SYMTAB* st, const char* name) {
  SYMBOL* sym = insert(st, name, SYM_SECTION);
  sym->u.sec.type = ST_UNKNOWN;
  sym->u.sec.ord = 0;
  return sym;
}

// TODO: prevent non-local symbols using this namespace
SYMBOL* sym_insert_local(SYMTAB* st) {
  char buf[16];
  sprintf(buf, "@@%u", st->locals++);
  return sym_insert_relative(st, buf);
}

const char* sym_name(const SYMBOL* sym) {
  assert(sym != NULL);
  return sym->name;
}

int sym_type(const SYMBOL* sym) {
  assert(sym != NULL);
  return sym->type;
}

BOOL sym_defined(const SYMBOL* sym) {
  assert(sym != NULL);
  return sym->defined;
}

void sym_define_relative(SYMBOL* sym, int seg, DWORD val) {
  assert(sym != NULL);
  assert(sym->type == SYM_RELATIVE);

  if (sym->u.rel.seg == NO_SEG) {
    assert(sym->defined == FALSE);
    sym->defined = TRUE;
    sym->u.rel.seg = seg;
  }
  else {
    assert(sym->defined == TRUE);
    assert(sym->u.rel.seg == seg);
  }
  sym->u.rel.val = val;
}

void sym_update_relative(SYMBOL* sym, int seg, DWORD val) {
  assert(sym != NULL);
  assert(sym->type == SYM_RELATIVE);
  assert(sym->u.rel.data_size == 0);

  sym->defined = TRUE;
  sym->u.rel.seg = seg;
  sym->u.rel.val = val;
}

DWORD sym_relative_value(const SYMBOL* sym) {
  assert(sym != NULL);
  assert(sym->type == SYM_RELATIVE);
  return sym->u.rel.val;
}

SEGNO sym_seg(const SYMBOL* sym) {
  assert(sym != NULL);
  assert(sym->type == SYM_RELATIVE);
  return sym->u.rel.seg;
}

void sym_set_public(SYMBOL* sym) {
  assert(sym != NULL);
  assert(sym->type == SYM_RELATIVE);
  sym->u.rel.public = PUBLIC;
}

BOOL sym_public(const SYMBOL* sym) {
  assert(sym != NULL);
  return sym->type == SYM_RELATIVE && sym->u.rel.public == PUBLIC;
}

BOOL sym_external(const SYMBOL* sym) {
  assert(sym != NULL);
  return sym->type == SYM_RELATIVE && sym->u.rel.external_id >= 0;
}

int sym_external_id(const SYMBOL* sym) {
  assert(sym != NULL);
  assert(sym->type == SYM_RELATIVE && sym->u.rel.external_id >= 0);
  return sym->u.rel.external_id;
}

unsigned sym_data_size(const SYMBOL* sym) {
  assert(sym != NULL);
  assert(sym->type == SYM_RELATIVE);
  return sym->u.rel.data_size;
}

void sym_set_data_size(SYMBOL* sym, unsigned data_size) {
  assert(sym != NULL);
  assert(sym->type == SYM_RELATIVE);
  assert(sym->u.rel.data_size == 0 || sym->u.rel.data_size == data_size);
  sym->u.rel.data_size = data_size;
}

void sym_define_absolute(SYMBOL* sym, long val) {
  assert(sym != NULL);
  assert(sym->type == SYM_ABSOLUTE);
  sym->u.abs.val = val;
  sym->defined = TRUE;
}

long sym_absolute_value(const SYMBOL* sym) {
  assert(sym != NULL);
  assert(sym->type == SYM_ABSOLUTE);
  return sym->u.abs.val;
}

int sym_section_type(const SYMBOL* sym) {
  assert(sym != NULL);
  assert(sym->type == SYM_SECTION);
  return sym->u.sec.type;
}

int sym_section_ordinal(const SYMBOL* sym) {
  assert(sym != NULL);
  assert(sym->type == SYM_SECTION);
  return sym->u.sec.ord;
}

void sym_define_section(SYMBOL* sym, int type, int ord) {
  assert(sym != NULL);
  assert(sym->type == SYM_SECTION);
  assert(type == ST_SEGMENT || type == ST_GROUP);
  assert(ord >= 0);
  sym->u.sec.type = type;
  sym->u.sec.ord = ord;
  sym->defined = TRUE;
}

SYMBOL* sym_first(SYMTAB* st, SYM_FIND* find) {
  assert(st != NULL);
  assert(find != NULL);
  find->st = st;
  find->i = 0;
  return st->used ? st->sym[0] : NULL;
}

// undefined if NULL already returned (this lets us increment i even if it overflows)
SYMBOL* sym_next(SYM_FIND* find) {
  assert(find != NULL);
  find->i++;
  return find->i < find->st->used ? find->st->sym[find->i] : NULL;
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_new_symbol_table(CuTest* tc) {
  SYMTAB* st;

  st = new_symbol_table(false);
  CuAssertPtrNotNull(tc, st);
  CuAssertPtrEquals(tc, NULL, st->sym);
  CuAssertIntEquals(tc, 0, st->allocated);
  CuAssertIntEquals(tc, 0, st->used);
  CuAssertIntEquals(tc, 0, st->next_external_id);
  CuAssertIntEquals(tc, 0, st->locals);

  delete_symbol_table(st);
}

static void test_sym_lookup(CuTest* tc) {
  SYMTAB* st = new_symbol_table(false);
  SYMBOL* sym;

  CuAssertPtrEquals(tc, NULL, sym_lookup(st, "Fred"));
  CuAssertPtrNotNull(tc, sym_insert_relative(st, "Fred"));
  CuAssertPtrEquals(tc, st->sym[0], sym_lookup(st, "Fred"));
  CuAssertPtrNotNull(tc, sym_insert_relative(st, "Fred"));
  CuAssertPtrEquals(tc, st->sym[0], sym_lookup(st, "Fred"));
  CuAssertPtrNotNull(tc, sym_insert_relative(st, "Berk_radish"));
  CuAssertPtrEquals(tc, st->sym[2], sym_lookup(st, "Berk_radish"));
  CuAssertIntEquals(tc, 3, st->used);
  CuAssertIntEquals(tc, 64, st->allocated);

  sym = st->sym[0];
  CuAssertStrEquals(tc, "Fred", sym_name(sym));
  CuAssertIntEquals(tc, SYM_RELATIVE, sym_type(sym));
  CuAssertIntEquals(tc, UNDEFINED, sym_defined(sym));
  CuAssertIntEquals(tc, FALSE, sym->defined);
  CuAssertIntEquals(tc, 0, sym->u.rel.val);
  CuAssertIntEquals(tc, 0, sym->u.rel.data_size);

  sym = st->sym[1];
  CuAssertStrEquals(tc, "Fred", sym_name(sym));
  CuAssertIntEquals(tc, SYM_RELATIVE, sym_type(sym));
  CuAssertIntEquals(tc, UNDEFINED, sym_defined(sym));
  CuAssertIntEquals(tc, FALSE, sym->defined);
  CuAssertIntEquals(tc, 0, sym->u.rel.val);

  sym = st->sym[2];
  CuAssertStrEquals(tc, "Berk_radish", sym_name(sym));
  CuAssertIntEquals(tc, SYM_RELATIVE, sym_type(sym));
  CuAssertIntEquals(tc, 0, sym->u.rel.val);
  sym_define_relative(sym, 3, -1);
  CuAssertIntEquals(tc, DEFINED, sym_defined(sym));
  CuAssertIntEquals(tc, -1, sym->u.rel.val);
  CuAssertIntEquals(tc, 3, sym->u.rel.seg);
  CuAssertIntEquals(tc, -1, sym_relative_value(sym));
  CuAssertIntEquals(tc, PRIVATE, sym->u.rel.public);
  sym_set_public(sym);
  CuAssertIntEquals(tc, PUBLIC, sym->u.rel.public);
  CuAssertIntEquals(tc, TRUE, sym_public(sym));
  CuAssertIntEquals(tc, -1, sym->u.rel.external_id);

  delete_symbol_table(st);
}

static void test_grow_table(CuTest* tc) {
  SYMTAB* st = new_symbol_table(false);
  unsigned i;

  sym_insert_relative(st, "Toad");
  CuAssertIntEquals(tc, 64, st->allocated);
  sym_insert_relative(st, "Cowslip");
  for (i = 2; i < 64; i++)
    sym_insert_relative(st, "dummy");
  CuAssertIntEquals(tc, 64, st->allocated);
  CuAssertIntEquals(tc, 64, st->used);

  CuAssertPtrNotNull(tc, sym_insert_relative(st, "Froggy"));
  CuAssertIntEquals(tc, 128, st->allocated);
  CuAssertIntEquals(tc, 65, st->used);

  CuAssertStrEquals(tc, "Toad", sym_name(st->sym[0]));
  CuAssertStrEquals(tc, "Cowslip", sym_name(st->sym[1]));
  CuAssertStrEquals(tc, "Froggy", sym_name(st->sym[64]));

  delete_symbol_table(st);
}

static void test_external_id(CuTest* tc) {
  SYMTAB* st;
  SYMBOL* sym;

  st = new_symbol_table(false);
  CuAssertIntEquals(tc, 0, st->next_external_id);

  sym = sym_insert_relative(st, "Kong");
  CuAssertIntEquals(tc, 0, st->next_external_id);
  CuAssertIntEquals(tc, FALSE, sym_external(sym));

  sym = sym_insert_external(st, "Fred", 0);
  CuAssertIntEquals(tc, 1, st->next_external_id);
  CuAssertIntEquals(tc, TRUE, sym_external(sym));
  CuAssertIntEquals(tc, 0, sym_external_id(sym));
  CuAssertIntEquals(tc, 0, sym_seg(sym));
  CuAssertIntEquals(tc, 0, sym_data_size(sym));
  sym_set_data_size(sym, 2);
  CuAssertIntEquals(tc, 2, sym_data_size(sym));

  sym = sym_insert_external(st, "Mucky", 1);
  CuAssertIntEquals(tc, 2, st->next_external_id);
  CuAssertIntEquals(tc, TRUE, sym_external(sym));
  CuAssertIntEquals(tc, 1, sym_external_id(sym));
  CuAssertIntEquals(tc, 1, sym_seg(sym));
  CuAssertIntEquals(tc, 0, sym_data_size(sym));

  delete_symbol_table(st);
}

static void test_find(CuTest* tc) {
  SYMTAB* st = new_symbol_table(false);
  SYM_FIND find;
  SYMBOL* sym;

  // empty table
  sym = sym_first(st, &find);
  CuAssertPtrEquals(tc, st, find.st);
  CuAssertIntEquals(tc, 0, find.i);
  CuAssertPtrEquals(tc, NULL, sym);

  // one symbol
  SYMBOL* apple = sym_insert_relative(st, "apple");
  sym = sym_first(st, &find);
  CuAssertPtrEquals(tc, st, find.st);
  CuAssertIntEquals(tc, 0, find.i);
  CuAssertPtrEquals(tc, apple, sym);
  sym = sym_next(&find);
  CuAssertPtrEquals(tc, st, find.st);
  CuAssertIntEquals(tc, 1, find.i);
  CuAssertPtrEquals(tc, NULL, sym);

  // two symbols
  SYMBOL* orange = sym_insert_relative(st, "orange");
  sym = sym_first(st, &find);
  CuAssertPtrEquals(tc, st, find.st);
  CuAssertIntEquals(tc, 0, find.i);
  CuAssertPtrEquals(tc, apple, sym);
  sym = sym_next(&find);
  CuAssertPtrEquals(tc, st, find.st);
  CuAssertIntEquals(tc, 1, find.i);
  CuAssertPtrEquals(tc, orange, sym);
  sym = sym_next(&find);
  CuAssertPtrEquals(tc, st, find.st);
  CuAssertIntEquals(tc, 2, find.i);
  CuAssertPtrEquals(tc, NULL, sym);

  delete_symbol_table(st);
}

CuSuite* symbol_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_symbol_table);
  SUITE_ADD_TEST(suite, test_sym_lookup);
  SUITE_ADD_TEST(suite, test_grow_table);
  SUITE_ADD_TEST(suite, test_external_id);
  SUITE_ADD_TEST(suite, test_find);
  return suite;
}

#endif // UNIT_TEST
