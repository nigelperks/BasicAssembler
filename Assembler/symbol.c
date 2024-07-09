// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Assembler symbol table.

#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>
#include "symbol.h"

#define NO_SEG (-1)

// Aho, Sethi, Ullman, "Compilers: Principle, Techniques, and Tools" (1986) p. 436
static unsigned hashpjw(const char* s) {
  unsigned h = 0;
  for (const char* p = s; *p; p++) {
    h = (h << 4) + *p;
    unsigned g = h & 0xf0000000;
    if (g) {
      h ^= (g >> 24);
      h ^= g;
    }
  }
  return h;
}

static unsigned hashpjw_toupper(const char* s) {
  unsigned h = 0;
  for (const char* p = s; *p; p++) {
    h = (h << 4) + toupper(*p);
    unsigned g = h & 0xf0000000;
    if (g) {
      h ^= (g >> 24);
      h ^= g;
    }
  }
  return h;
}

static SYMBOL* new_symbol(const char* name, BYTE type, unsigned lineno) {
  SYMBOL* sym = emalloc(sizeof *sym);
  sym->name = estrdup(name);
  sym->type = type;
  sym->defined = UNDEFINED;
  sym->lineno = lineno;
  return sym;
}

static void delete_symbol(SYMBOL* sym) {
  if (sym) {
    efree(sym->name);
    efree(sym);
  }
}

SYMTAB* new_symbol_table(bool case_sensitive) {
  SYMTAB* st = ecalloc(sizeof *st);
  st->case_sensitive = case_sensitive;
  return st;
}

void delete_symbol_table(SYMTAB* st) {
  if (st) {
    efree(st->externals);
    for (unsigned i = 0; i < SYMBOL_HASH_SIZE; i++) {
      SYMBOL* next = NULL;
      for (SYMBOL* sym = st->hash[i]; sym; sym = next) {
        next = sym->next;
        delete_symbol(sym);
      }
    }
    efree(st);
  }
}

SYMBOL* sym_lookup(SYMTAB* st, const char* name) {
  assert(st != NULL);
  assert(name != NULL);
  if (st->case_sensitive) {
    unsigned h = hashpjw(name) % SYMBOL_HASH_SIZE;
    for (SYMBOL* sym = st->hash[h]; sym; sym = sym->next) {
      if (strcmp(sym->name, name) == 0)
        return sym;
    }
  }
  else {
    unsigned h = hashpjw_toupper(name) % SYMBOL_HASH_SIZE;
    for (SYMBOL* sym = st->hash[h]; sym; sym = sym->next) {
      if (_stricmp(sym->name, name) == 0)
        return sym;
    }
  }
  return NULL;
}

static SYMBOL* insert(SYMTAB* st, const char* name, int type, unsigned lineno) {
  assert(st != NULL);
  assert(name != NULL);

  unsigned h = st->case_sensitive ? hashpjw(name) : hashpjw_toupper(name);
  h %= SYMBOL_HASH_SIZE;
  SYMBOL* sym = new_symbol(name, type, lineno);
  sym->next = st->hash[h];
  st->hash[h] = sym;
  return sym;
}

SYMBOL* sym_insert_unknown(SYMTAB* st, const char* name, unsigned lineno) {
  return insert(st, name, SYM_UNKNOWN, lineno);
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

SYMBOL* sym_insert_relative(SYMTAB* st, const char* name, unsigned lineno) {
  SYMBOL* sym = insert(st, name, SYM_RELATIVE, lineno);
  sym_init_relative(sym);
  return sym;
}

SYMBOL* sym_insert_external(SYMTAB* st, const char* name, SEGNO seg, unsigned lineno) {
  assert(st != NULL);
  assert(name != NULL);
  assert(seg != NO_SEG);

  assert(st->externals_count <= st->externals_size);
  if (st->externals_count == st->externals_size) {
    st->externals_size = st->externals_size ? 2 * st->externals_size : 32;
    st->externals = erealloc(st->externals, st->externals_size * sizeof st->externals[0]);
  }
  assert(st->externals_count < st->externals_size);

  SYMBOL* sym = insert(st, name, SYM_RELATIVE, lineno);
  sym->defined = DEFINED;
  sym->u.rel.val = 0;
  sym->u.rel.seg = seg;
  sym->u.rel.public = PRIVATE;
  sym->u.rel.external_id = st->externals_count;
  assert(sym->u.rel.external_id >= 0);
  sym->u.rel.data_size = 0;

  st->externals[st->externals_count++] = sym;

  return sym;
}

SYMBOL* sym_insert_absolute(SYMTAB* st, const char* name, unsigned lineno) {
  return insert(st, name, SYM_ABSOLUTE, lineno);
}

SYMBOL* sym_insert_section(SYMTAB* st, const char* name, unsigned lineno) {
  SYMBOL* sym = insert(st, name, SYM_SECTION, lineno);
  sym->u.sec.type = ST_UNKNOWN;
  sym->u.sec.ord = 0;
  return sym;
}

// TODO: prevent non-local symbols using this namespace
SYMBOL* sym_insert_local(SYMTAB* st, unsigned lineno) {
  char buf[16];
  sprintf(buf, "@@%u", st->locals++);
  return sym_insert_relative(st, buf, lineno);
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

unsigned sym_lineno(const SYMBOL* sym) {
  assert(sym != NULL);
  return sym->lineno;
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

static SYMBOL* valid_hashed_symbol(SYM_FIND* find) {
  while (find->sym == NULL) {
    find->h++;
    if (find->h >= SYMBOL_HASH_SIZE)
      return find->sym = NULL;
    find->sym = find->st->hash[find->h];
  }
  return find->sym;
}

SYMBOL* sym_first(SYMTAB* st, SYM_FIND* find) {
  assert(st != NULL);
  assert(find != NULL);

  find->st = st;
  find->h = 0;
  find->sym = st->hash[0];
  return valid_hashed_symbol(find);
}

// Undefined behaviour if NULL returned last time.
SYMBOL* sym_next(SYM_FIND* find) {
  assert(find != NULL);
  assert(find->sym != NULL);

  find->sym = find->sym->next;
  return valid_hashed_symbol(find);
}

SYMBOL* sym_first_external(SYMTAB* st, SYM_FIND* find) {
  assert(st != NULL);
  assert(find != NULL);

  find->st = st;
  find->h = 0;
  return find->sym = st->externals_count ? st->externals[0] : NULL;
}

SYMBOL* sym_next_external(SYM_FIND* find) {
  assert(find != NULL);
  assert(find->h <= find->st->externals_count);
  if (find->h < find->st->externals_count)
    find->h++;
  return find->h < find->st->externals_count ? find->st->externals[find->h] : NULL;
}

#define REPORT_COUNTS (8)

static unsigned list_size(const SYMBOL* sym) {
  unsigned n = 0;
  for ( ; sym; sym = sym->next)
    n++;
  return n;
}

void report_sym_hash(const SYMTAB* st) {
  unsigned counts[REPORT_COUNTS] = { 0 };
  unsigned excessive = 0;

  for (unsigned h = 0; h < SYMBOL_HASH_SIZE; h++) {
    unsigned count = list_size(st->hash[h]);
    if (count < REPORT_COUNTS)
      counts[count]++;
    else
      excessive++;
  }

  putchar('\n');
  printf("%-17s  %-20s\n", "NUMBER OF SYMBOLS", "NUMBER OF HASH LISTS");
  unsigned total = 0;
  for (unsigned i = 0; i < REPORT_COUNTS; i++) {
    printf("%15u    %4u\n", i, counts[i]);
    total += counts[i];
  }
  printf("%15u+   %4u\n", REPORT_COUNTS, excessive);
  printf("%17s  %4u\n", "TOTAL", total);
}


#ifdef UNIT_TEST

#include "CuTest.h"

static void test_new_symbol_table(CuTest* tc) {
  SYMTAB* st;

  st = new_symbol_table(false);
  CuAssertPtrNotNull(tc, st);
  CuAssertPtrEquals(tc, NULL, st->hash[0]);
  CuAssertPtrEquals(tc, NULL, st->hash[SYMBOL_HASH_SIZE - 1]);
  CuAssertPtrEquals(tc, NULL, st->externals);
  CuAssertIntEquals(tc, 0, st->externals_size);
  CuAssertIntEquals(tc, 0, st->externals_count);
  CuAssertIntEquals(tc, 0, st->locals);

  delete_symbol_table(st);
}

static void test_sym_lookup(CuTest* tc) {
  SYMTAB* st = new_symbol_table(false);

  CuAssertPtrEquals(tc, NULL, sym_lookup(st, "Fred"));
  SYMBOL* sym1 = sym_insert_relative(st, "Fred", 1);
  CuAssertPtrNotNull(tc, sym1);
  CuAssertPtrEquals(tc, sym1, sym_lookup(st, "Fred"));
  SYMBOL* sym2 = sym_insert_relative(st, "Fred", 2);
  CuAssertPtrEquals(tc, sym2, sym_lookup(st, "Fred"));
  SYMBOL* sym3 = sym_insert_relative(st, "Berk_radish", 3);
  CuAssertPtrNotNull(tc, sym3);
  CuAssertPtrEquals(tc, sym3, sym_lookup(st, "Berk_radish"));

  CuAssertStrEquals(tc, "Fred", sym_name(sym1));
  CuAssertIntEquals(tc, SYM_RELATIVE, sym_type(sym1));
  CuAssertIntEquals(tc, UNDEFINED, sym_defined(sym1));
  CuAssertIntEquals(tc, FALSE, sym1->defined);
  CuAssertIntEquals(tc, 0, sym1->u.rel.val);
  CuAssertIntEquals(tc, 0, sym1->u.rel.data_size);

  CuAssertStrEquals(tc, "Fred", sym_name(sym2));
  CuAssertIntEquals(tc, SYM_RELATIVE, sym_type(sym2));
  CuAssertIntEquals(tc, UNDEFINED, sym_defined(sym2));
  CuAssertIntEquals(tc, FALSE, sym2->defined);
  CuAssertIntEquals(tc, 0, sym2->u.rel.val);

  CuAssertStrEquals(tc, "Berk_radish", sym_name(sym3));
  CuAssertIntEquals(tc, SYM_RELATIVE, sym_type(sym3));
  CuAssertIntEquals(tc, 0, sym3->u.rel.val);
  sym_define_relative(sym3, 3, -1);
  CuAssertIntEquals(tc, DEFINED, sym_defined(sym3));
  CuAssertIntEquals(tc, -1, sym3->u.rel.val);
  CuAssertIntEquals(tc, 3, sym3->u.rel.seg);
  CuAssertIntEquals(tc, -1, sym_relative_value(sym3));
  CuAssertIntEquals(tc, PRIVATE, sym3->u.rel.public);
  sym_set_public(sym3);
  CuAssertIntEquals(tc, PUBLIC, sym3->u.rel.public);
  CuAssertIntEquals(tc, TRUE, sym_public(sym3));
  CuAssertIntEquals(tc, -1, sym3->u.rel.external_id);

  delete_symbol_table(st);
}

static void test_external_id(CuTest* tc) {
  SYMTAB* st;
  SYMBOL* sym;

  st = new_symbol_table(false);
  CuAssertIntEquals(tc, 0, st->externals_count);

  sym = sym_insert_relative(st, "Kong", 1);
  CuAssertIntEquals(tc, 0, st->externals_count);
  CuAssertIntEquals(tc, FALSE, sym_external(sym));

  sym = sym_insert_external(st, "Fred", 0, 2);
  CuAssertTrue(tc, st->externals_size >= 1);
  CuAssertIntEquals(tc, 1, st->externals_count);
  CuAssertPtrEquals(tc, sym, st->externals[0]);
  CuAssertIntEquals(tc, TRUE, sym_external(sym));
  CuAssertIntEquals(tc, 0, sym_external_id(sym));
  CuAssertIntEquals(tc, 0, sym_seg(sym));
  CuAssertIntEquals(tc, 0, sym_data_size(sym));
  sym_set_data_size(sym, 2);
  CuAssertIntEquals(tc, 2, sym_data_size(sym));

  sym = sym_insert_external(st, "Mucky", 1, 3);
  CuAssertIntEquals(tc, 2, st->externals_count);
  CuAssertPtrEquals(tc, sym, st->externals[1]);
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
  CuAssertIntEquals(tc, SYMBOL_HASH_SIZE, find.h);
  CuAssertPtrEquals(tc, NULL, find.sym);
  CuAssertPtrEquals(tc, NULL, sym);

  // one symbol
  SYMBOL* apple = sym_insert_relative(st, "apple", 1);
  sym = sym_first(st, &find);
  CuAssertPtrEquals(tc, st, find.st);
  CuAssertPtrEquals(tc, apple, find.sym);
  CuAssertPtrEquals(tc, apple, sym);
  sym = sym_next(&find);
  CuAssertPtrEquals(tc, st, find.st);
  CuAssertIntEquals(tc, SYMBOL_HASH_SIZE, find.h);
  CuAssertPtrEquals(tc, NULL, find.sym);
  CuAssertPtrEquals(tc, NULL, sym);

  // two symbols
  SYMBOL* orange = sym_insert_relative(st, "orange", 2);
  sym = sym_first(st, &find);
  CuAssertPtrEquals(tc, st, find.st);
  CuAssertPtrEquals(tc, apple, sym);
  sym = sym_next(&find);
  CuAssertPtrEquals(tc, st, find.st);
  CuAssertPtrEquals(tc, orange, sym);
  sym = sym_next(&find);
  CuAssertPtrEquals(tc, st, find.st);
  CuAssertPtrEquals(tc, NULL, sym);

  delete_symbol_table(st);
}

static void test_hash(CuTest* tc) {
  unsigned h1 = hashpjw_toupper("TABULATED");
  unsigned h2 = hashpjw_toupper("TabuLated");
  unsigned h3 = hashpjw_toupper("tabulated");
  CuAssertIntEquals(tc, h1, h2);
  CuAssertIntEquals(tc, h1, h3);
}

static void test_find_externals(CuTest* tc) {
  SYMTAB* st;
  SYM_FIND find;
  SYMBOL* sym;

  st = new_symbol_table(false);

  // empty
  sym = sym_first_external(st, &find);
  CuAssertPtrEquals(tc, NULL, sym);
  CuAssertPtrEquals(tc, NULL, find.sym);
  sym = sym_next_external(&find);
  CuAssertPtrEquals(tc, NULL, sym);
  CuAssertPtrEquals(tc, NULL, find.sym);

  // externals in a different order than the hash order
  SYMBOL* bbb = sym_insert_external(st, "bbb", 0, 1);
  SYMBOL* ccc = sym_insert_relative(st, "ccc", 3);
  SYMBOL* aaa = sym_insert_external(st, "aaa", 0, 2);

  // check that the total order is aaa, bbb, ccc
  sym = sym_first(st, &find);
  CuAssertPtrEquals(tc, aaa, sym);
  sym = sym_next(&find);
  CuAssertPtrEquals(tc, bbb, sym);
  sym = sym_next(&find);
  CuAssertPtrEquals(tc, ccc, sym);
  sym = sym_next(&find);
  CuAssertPtrEquals(tc, NULL, sym);

  // check that externals order is bbb, aaa
  sym = sym_first_external(st, &find);
  CuAssertPtrEquals(tc, bbb, sym);
  sym = sym_next_external(&find);
  CuAssertPtrEquals(tc, aaa, sym);
  sym = sym_next_external(&find);
  CuAssertPtrEquals(tc, NULL, sym);

  delete_symbol_table(st);
}

CuSuite* symbol_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_symbol_table);
  SUITE_ADD_TEST(suite, test_sym_lookup);
  SUITE_ADD_TEST(suite, test_external_id);
  SUITE_ADD_TEST(suite, test_find);
  SUITE_ADD_TEST(suite, test_hash);
  SUITE_ADD_TEST(suite, test_find_externals);
  return suite;
}

#endif // UNIT_TEST
