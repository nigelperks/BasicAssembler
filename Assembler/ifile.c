// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Intermediate file.

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "ifile.h"
#include "token.h"
#include "utils.h"

IFILE* new_ifile(SOURCE* src) {
  IFILE* ifile = NULL;

  assert(src != NULL);

  ifile = emalloc(sizeof *ifile);

  ifile->source = src;
  ifile->recs = NULL;
  ifile->allocated = 0;
  ifile->used = 0;
  ifile->pos = 0;
  ifile->st = new_symbol_table();
  ifile->start_label = NO_SYM;
  ifile->provisional_sizes = FALSE;
  ifile->ngroup = 0;
  ifile->nseg = 0;

  return ifile;
}

void delete_ifile(IFILE* ifile) {
  if (ifile) {
    free(ifile->recs);
    delete_symbol_table(ifile->st);
    for (unsigned i = 0; i < ifile->nseg; i++)
      free(ifile->segments[i].name);
    for (GROUPNO i = 0; i < ifile->ngroup; i++)
      free(ifile->groups[i]);
    free(ifile);
  }
}

IREC* new_irec(IFILE* ifile) {
  assert(ifile->used <= ifile->allocated);
  if (ifile->used == ifile->allocated) {
    ifile->allocated = ifile->allocated ? 2 * ifile->allocated : 128;
    ifile->recs = realloc(ifile->recs, (sizeof ifile->recs[0]) * ifile->allocated);
    if (ifile->recs == NULL)
      fatal("out of memory for intermediate records\n");
  }

  assert(ifile->used < ifile->allocated);
  IREC* irec = &ifile->recs[ifile->used++];
  irec->source = NO_SOURCE;
  irec->label = NO_SYM;
  irec->rep = TOK_NONE;
  irec->op = TOK_NONE;
  irec->operand_pos = 0;
  irec->near_jump_size = 0;
  irec->def = NULL;
  irec->size = 0;
  return irec;
}

unsigned irec_count(IFILE* ifile) {
  assert(ifile != NULL);
  return ifile->used;
}

IREC* get_irec(IFILE* ifile, unsigned i) {
  assert(ifile != NULL);
  assert(i < ifile->used);
  return &ifile->recs[i];
}

const IREC* get_irec_const(const IFILE* ifile, unsigned i) {
  assert(ifile != NULL);
  assert(i < ifile->used);
  return &ifile->recs[i];
}

void print_intermediate(const IFILE* ifile, const char* descrip, unsigned options) {
  const IREC* irec = NULL;
  unsigned i;

  assert(ifile != NULL);
  assert(descrip != NULL);

  printf("\nINTERMEDIATE FILE: %s\n\n", descrip);

  printf("%-4s  ", "REC#");
  if (options & PRINT_SIZE)
    printf("%-4s  ", "SIZE");
  putchar('\n');

  for (i = 0, irec = ifile->recs; i < ifile->used; i++, irec++) {
    printf("%4u: ", i);
    if (options & PRINT_SIZE)
      printf("%4u: ", (unsigned) irec->size);
    if (options & PRINT_SOURCE_NAME) {
      printf("%s: ", source_name(ifile->source));
      printf("%4u: ", source_lineno(ifile->source, irec->source));
    }
    printf("%s", source_text(ifile->source, irec->source));
    putchar('\n');
  }

  putchar('\n');
}

unsigned group_count(const IFILE* ifile) {
  assert(ifile != NULL);
  return ifile->ngroup;
}

int create_group(IFILE* ifile, const char* name) {
  assert(ifile != NULL);
  assert(name != NULL);
  if (ifile->ngroup >= MAX_GROUP)
    fatal("too many groups\n");
  int group = ifile->ngroup++;
  ifile->groups[group] = estrdup(name);
  return group;
}

const char* group_name(const IFILE* ifile, GROUPNO group) {
  assert(ifile != NULL);
  assert(group < ifile->ngroup);
  return ifile->groups[group];
}

SEGNO segment_count(const IFILE* ifile) {
  assert(ifile != NULL);
  return ifile->nseg;
}

int create_segment(IFILE* ifile, const char* name) {
  assert(ifile != NULL);
  assert(name != NULL);
  if (ifile->nseg >= MAX_SEGMENT)
    fatal("too many segments\n");
  int seg = ifile->nseg++;
  ASM_SEGMENT* p = &ifile->segments[seg];
  p->name = estrdup(name);
  p->public = FALSE;
  p->stack = FALSE;
  p->group = NO_GROUP;
  p->pc = 0;
  return seg;
}

const char* segment_name(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return ifile->segments[seg].name;
}

DWORD segment_pc(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return ifile->segments[seg].pc;
}

void set_segment_pc(IFILE* ifile, unsigned seg, DWORD pc) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  ASM_SEGMENT* segment = &ifile->segments[seg];
  segment->pc = pc;
}

void inc_segment_pc(IFILE* ifile, unsigned seg, DWORD size) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  ASM_SEGMENT* segment = &ifile->segments[seg];
  if ((DWORD)(-1) - segment->pc < size)
    fatal("PC gone mad\n");
  segment->pc += size;
}

GROUPNO segment_group(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return ifile->segments[seg].group;
}

void set_segment_group(IFILE* ifile, unsigned seg, GROUPNO group) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  assert(group == NO_GROUP || (group >= 0 && group < ifile->ngroup));
  ifile->segments[seg].group = group;
}

BOOL segment_public(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return ifile->segments[seg].public;
}

void set_segment_public(IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  ifile->segments[seg].public = TRUE;
}

BOOL segment_stack(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return ifile->segments[seg].stack;
}

void set_segment_stack(IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  ifile->segments[seg].stack = TRUE;
}

void reset_pc(IFILE* ifile) {
  assert(ifile != NULL);
  for (unsigned i = 0; i < ifile->nseg; i++)
    ifile->segments[i].pc = 0;
}

#ifdef UNIT_TEST

#include "cutest.h"

static void test_new_ifile(CuTest* tc) {
  IFILE* ifile;
  SOURCE src;

  ifile = new_ifile(&src);
  CuAssertPtrNotNull(tc, ifile);
  CuAssertPtrEquals(tc, &src, ifile->source);
  CuAssertPtrEquals(tc, NULL, ifile->recs);
  CuAssertIntEquals(tc, 0, ifile->allocated);
  CuAssertIntEquals(tc, 0, ifile->used);
  CuAssertIntEquals(tc, 0, ifile->pos);
  CuAssertPtrNotNull(tc, ifile->st);
  CuAssertIntEquals(tc, NO_SYM, ifile->start_label);
  CuAssertIntEquals(tc, FALSE, ifile->provisional_sizes);
  CuAssertIntEquals(tc, 0, ifile->ngroup);
  CuAssertIntEquals(tc, 0, ifile->nseg);

  CuAssertIntEquals(tc, 0, irec_count(ifile));

  delete_ifile(ifile);
}

static void test_new_irec(CuTest* tc) {
  SOURCE src;
  IFILE* ifile = new_ifile(&src);
  IREC* irec = NULL;

  irec = new_irec(ifile);

  CuAssertPtrNotNull(tc, irec);
  CuAssertIntEquals(tc, NO_SOURCE, irec->source);
  CuAssertIntEquals(tc, NO_SYM, irec->label);
  CuAssertIntEquals(tc, TOK_NONE, irec->rep);
  CuAssertIntEquals(tc, TOK_NONE, irec->op);
  CuAssertIntEquals(tc, 0, irec->operand_pos);
  CuAssertIntEquals(tc, 0, irec->near_jump_size);
  CuAssertTrue(tc, irec->def == NULL);
  CuAssertIntEquals(tc, 0, irec->size);

  CuAssertPtrNotNull(tc, ifile->recs);
  CuAssertIntEquals(tc, 1, ifile->used);
  CuAssertIntEquals(tc, 128, ifile->allocated);
  CuAssertPtrEquals(tc, irec, ifile->recs + 0);
  CuAssertPtrEquals(tc, irec, get_irec(ifile, 0));

  irec = new_irec(ifile);
  CuAssertPtrNotNull(tc, irec);
  CuAssertIntEquals(tc, NO_SOURCE, irec->source);
  CuAssertIntEquals(tc, NO_SYM, irec->label);
  CuAssertIntEquals(tc, 0, irec->size);
  CuAssertPtrNotNull(tc, ifile->recs);
  CuAssertIntEquals(tc, 2, ifile->used);
  CuAssertIntEquals(tc, 128, ifile->allocated);
  CuAssertPtrEquals(tc, irec, ifile->recs + 1);

  ifile->used = ifile->allocated;
  irec = new_irec(ifile);
  CuAssertPtrNotNull(tc, irec);
  CuAssertIntEquals(tc, NO_SOURCE, irec->source);
  CuAssertPtrNotNull(tc, ifile->recs);
  CuAssertIntEquals(tc, 129, ifile->used);
  CuAssertIntEquals(tc, 256, ifile->allocated);
  CuAssertPtrEquals(tc, irec, ifile->recs + 128);

  delete_ifile(ifile);
}

static void test_segments(CuTest* tc) {
  SOURCE src;
  IFILE* ifile = new_ifile(&src);

  CuAssertIntEquals(tc, 0, segment_count(ifile));
  CuAssertIntEquals(tc, 0, group_count(ifile));

  int seg0 = create_segment(ifile, "CODE");
  CuAssertIntEquals(tc, 0, seg0);
  CuAssertIntEquals(tc, 1, segment_count(ifile));
  CuAssertStrEquals(tc, "CODE", segment_name(ifile, seg0));
  CuAssertIntEquals(tc, FALSE, segment_public(ifile, seg0));
  CuAssertIntEquals(tc, FALSE, segment_stack(ifile, seg0));
  set_segment_public(ifile, seg0);
  CuAssertIntEquals(tc, TRUE, segment_public(ifile, seg0));
  CuAssertIntEquals(tc, 0, segment_pc(ifile, seg0));
  set_segment_pc(ifile, seg0, 0x213);
  CuAssertIntEquals(tc, 0x213, segment_pc(ifile, seg0));
  inc_segment_pc(ifile, seg0, 0x531);
  CuAssertIntEquals(tc, 0x744, segment_pc(ifile, seg0));
  CuAssertIntEquals(tc, NO_GROUP, segment_group(ifile, seg0));

  int group0 = create_group(ifile, "DGROUP");
  CuAssertIntEquals(tc, 0, group0);
  CuAssertIntEquals(tc, 1, group_count(ifile));
  CuAssertStrEquals(tc, "DGROUP", group_name(ifile, group0));

  set_segment_group(ifile, seg0, group0);
  CuAssertIntEquals(tc, group0, segment_group(ifile, seg0));

  int seg1 = create_segment(ifile, "Loserville");
  CuAssertIntEquals(tc, 1, seg1);
  set_segment_pc(ifile, seg1, 0xdead);
  CuAssertIntEquals(tc, 0x744, segment_pc(ifile, seg0));
  CuAssertIntEquals(tc, 0xdead, segment_pc(ifile, seg1)); 
  reset_pc(ifile);
  CuAssertIntEquals(tc, 0, segment_pc(ifile, seg0));
  CuAssertIntEquals(tc, 0, segment_pc(ifile, seg1)); 
  set_segment_stack(ifile, seg1);
  CuAssertIntEquals(tc, TRUE, segment_stack(ifile, seg1));

  delete_ifile(ifile);
}

CuSuite* ifile_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_ifile);
  SUITE_ADD_TEST(suite, test_new_irec);
  SUITE_ADD_TEST(suite, test_segments);
  return suite;
}

#endif // UNIT_TEST