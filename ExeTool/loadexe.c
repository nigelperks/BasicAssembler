// EXE analysis tool
// Copyright (c) 2021-24 Nigel Perks
// Load EXE file.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>
#include "loadexe.h"
#include "fileutil.h"

static unsigned long calculated_size(const EXEHEADER*);
static RELOC_ITEM* load_reloc_table(FILE*, const EXEHEADER*);

LOADEXE* load_exe(const char* file_name) {
  LOADEXE* exe = emalloc(sizeof *exe);

  FILE* fp = efopen(file_name, "rb", "reading");
  FileSize actual_size = file_size(fp, file_name);

  size_t count = fread(&exe->header, 1, sizeof exe->header, fp);
  if (count != sizeof exe->header)
    fatal("file too small for EXE header: %s\n", file_name);

  if (exe->header.exSignature != 0x5A4D)
    fatal("EXE signature not found: %s\n", file_name);

  long specified_size = calculated_size(&exe->header);
  if (specified_size != actual_size) {
    fprintf(stderr, "%s: exPages = %u\n", file_name, (unsigned)exe->header.exPages);
    fprintf(stderr, "%s: exExtraBytes = %u\n", file_name, (unsigned)exe->header.exExtraBytes);
    fprintf(stderr, "%s: calculated size: %ld\n", file_name, specified_size);
    fprintf(stderr, "%s: actual size:     %ld\n", file_name, actual_size);
    fatal("file size discrepancy: %s\n", file_name);
  }

  if (exe->header.exRelocItems == 0)
    exe->reloc_table = NULL;
  else
    exe->reloc_table = load_reloc_table(fp, &exe->header);

  FileSize image_start = (FileSize)exe->header.exHeaderSize * 16;
  if (image_start > actual_size)
    fatal("calculated image start beyond actual file size: %s\n", file_name);

  exe->image_size = specified_size - image_start;
  fseek(fp, image_start, SEEK_SET);
  exe->image = read_file(fp, exe->image_size);

  return exe;
}

static unsigned long calculated_size(const EXEHEADER* h) {
  return h->exExtraBytes ? (unsigned long)(h->exPages - 1) * 512 + h->exExtraBytes : (unsigned long)h->exPages * 512;
}

void delete_loadexe(LOADEXE* exe) {
  if (exe) {
    efree(exe->image);
    efree(exe);
  }
}

static RELOC_ITEM* load_reloc_table(FILE* fp, const EXEHEADER* header) {
  assert(fp != NULL);
  assert(header != NULL);
  assert(header->exRelocItems > 0);

  RELOC_ITEM* items = emalloc(sizeof items[0] * header->exRelocItems);

  fseek(fp, header->exRelocTable, SEEK_SET);

  for (unsigned i = 0; i < header->exRelocItems; i++) {
    items[i].offset = getword(fp);
    items[i].segment = getword(fp);
  }

  return items;
}

static void sort_reloc_table(RELOC_ITEM* table, unsigned elements);

RELOC_ITEM* sorted_reloc_table(RELOC_ITEM* rt, unsigned elements) {
  unsigned size = elements * sizeof rt[0];
  RELOC_ITEM* sorted = emalloc(size);
  memcpy(sorted, rt, size);
  sort_reloc_table(sorted, elements);
  return sorted;
}

static int compare_reloc(const void*, const void*);

static void sort_reloc_table(RELOC_ITEM* rt, unsigned elements) {
  qsort(rt, elements, sizeof rt[0], &compare_reloc);
}

static int compare_reloc(const void* p, const void* q) {
  const RELOC_ITEM* r = p;
  const RELOC_ITEM* s = q;

  if (r->segment < s->segment)
    return -1;
  if (r->segment > s->segment)
    return 1;
  if (r->offset < s->offset)
    return -1;
  if (r->offset > s->offset)
    return 1;
  return 0;
}

DWORD* sorted_reloc_list(const RELOC_ITEM* rt, unsigned elements) {
  DWORD* list = emalloc(elements * sizeof list[0]);
  for (unsigned i = 0; i < elements; i++)
    list[i] = (rt[i].segment << 4) + rt[i].offset;
  qsort(list, elements, sizeof list[0], &compare_dword);
  return list;
}

int compare_dword(const void* p, const void* q) {
  const DWORD* r = p;
  const DWORD* s = q;

  if (*r < *s) return -1;
  if (*r > *s) return 1;
  return 0;
}

static int sig_char(int c)
{
    return isprint(c) ? c : '?';
}

void print_exe_header(const struct EXEHEADER * h)
{
    printf("EXEHEADER:\n");

    printf("exSignature:  %04x: ", h->exSignature);
    putchar(sig_char(h->exSignature & 0xff));
    putchar(sig_char((h->exSignature >> 8) & 0xff));
    putchar('\n');

    printf("exExtraBytes: %04x = %u\n", h->exExtraBytes, h->exExtraBytes);
    printf("exPages:      %04x = %u\n", h->exPages, h->exPages);
    printf("exRelocItems: %04x = %u\n", h->exRelocItems, h->exRelocItems);
    printf("exHeaderSize: %04x = %u\n", h->exHeaderSize, h->exHeaderSize);
    printf("exMinAlloc:   %04x = %u\n", h->exMinAlloc, h->exMinAlloc);
    printf("exMaxAlloc:   %04x = %u\n", h->exMaxAlloc, h->exMaxAlloc);
    printf("exInitSS:     %04x\n", h->exInitSS);
    printf("exInitSP:     %04x\n", h->exInitSP);
    printf("exCheckSum:   %04x\n", h->exCheckSum);
    printf("exInitIP:     %04x\n", h->exInitIP);
    printf("exInitCS:     %04x\n", h->exInitCS);
    printf("exRelocTable: %04x = %u\n", h->exRelocTable, h->exRelocTable);
    printf("exOverlay:    %04x = %u\n", h->exOverlay, h->exOverlay);
}
