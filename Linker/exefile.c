// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// MS-DOS EXE file format.

#include <stdlib.h>
#include <assert.h>
#include "exefile.h"

void delete_buildexe(BUILDEXE* exe) {
  if (exe) {
    efree(exe->reloc_table);
    efree(exe);
  }
}

#define PARA_SIZE (16)
#define PAGE_SIZE (512)

#define HEADER_PARAGRAPHS (0x20)    // Turbo compatible
#define HEADER_SIZE (HEADER_PARAGRAPHS * PARA_SIZE)
#define HEADER_PAGES (HEADER_SIZE / PAGE_SIZE)

static RELOC_ITEM* build_reloc_table(const WORD exRelocItems, FIXUPS*);

// Take ownership of image for an EXE file.
// Build EXE header and relocation table.
BUILDEXE* build_exe(SEGMENTED* prog, IMAGE* image) {
  assert(prog != NULL);
  assert(image != NULL);

  if (!image->start.set)
    fatal("no start address for EXE\n");

  if (image->hi / PAGE_SIZE > (unsigned)((WORD)(-1) - HEADER_PAGES - 2))
    fatal("image too large for EXE\n");

  BUILDEXE* exe = emalloc(sizeof *exe);

  exe->image = image;

  exe->header.exSignature = 0x5A4D;
  exe->header.exExtraBytes = image->hi % PAGE_SIZE;
  exe->header.exPages = HEADER_PAGES + (WORD)(image->hi / PAGE_SIZE) + (image->hi % PAGE_SIZE != 0);

  size_t n = segment_and_group_fixups(prog->fixups);
  if (n) {
    if (n > (WORD)(-1))
      fatal("too many segment and group fixups for EXE\n");
    exe->header.exRelocItems = (WORD)n;
    exe->reloc_table = build_reloc_table(exe->header.exRelocItems, prog->fixups);
  }
  else {
    exe->header.exRelocItems = 0;
    exe->reloc_table = NULL;
  }

  exe->header.exHeaderSize = HEADER_PARAGRAPHS;
  exe->header.exMinAlloc = (WORD) (image->space / 16 + (image->space % 16 != 0));
  exe->header.exMaxAlloc = 0xffff; // Turbo compatible
  if (image->stack.set) {
    exe->header.exInitSS = image->stack.seg;
    exe->header.exInitSP = image->stack.size;
  }
  else {
    exe->header.exInitSS = 0;
    exe->header.exInitSP = 0;
    fprintf(stderr, "Warning: no stack\n");
  }
  exe->header.exCheckSum = 0;
  if (image->start.set) {
    exe->header.exInitIP = image->start.offset;
    exe->header.exInitCS = image->start.seg;
  }
  else
    fatal("cannot build EXE: no start address\n");
  exe->header.exRelocTable = 0x3e; // Turbo compatible
  exe->header.exOverlay = 0;

  return exe;
}

// Build EXE relocation table of segment:offset addresses in the image
// which hold a physical segment address to be modified at load time.
static RELOC_ITEM* build_reloc_table(const WORD n, FIXUPS* fixups) {
  assert(n != 0);
  RELOC_ITEM* rt = emalloc(n * sizeof rt[0]);
  unsigned j = 0;
  for (DWORD i = 0, e = fixups_count(fixups); i < e; i++) {
    const FIXUP* f = fixup(fixups, i);
    if (f->type == FT_SEGMENT) {
      assert(j < n);
      rt[j].offset = f->holding_offset;
      rt[j].segment = f->u.seg.holding_seg_addr;
      j++;
    }
    else if (f->type == FT_GROUP) {
      assert(j < n);
      rt[j].offset = f->holding_offset;
      rt[j].segment = f->u.group.holding_seg_addr;
      j++;
    }
  }
  return rt;
}

static void putword(FILE*, WORD);

void output_exe(BUILDEXE* exe, const char* output_name) {
  assert(exe != NULL);
  assert(output_name != NULL);

  FILE* fp = fopen(output_name, "wb");

  size_t written = fwrite(&exe->header, 1, sizeof exe->header, fp); // optimised for non-padded, little-endian EXEHEADER on host

  if (exe->header.exRelocItems) {
    assert(exe->reloc_table != NULL);

    for ( ; written < exe->header.exRelocTable; written++)
      fputc(0, fp);
    for (unsigned i = 0; i < exe->header.exRelocItems; i++) {
      putword(fp, exe->reloc_table[i].offset);
      putword(fp, exe->reloc_table[i].segment);
      written += 4;
    }
  }

  for ( ; written < HEADER_SIZE; written++)
    fputc(0, fp);

  fwrite(exe->image->data, 1, exe->image->hi, fp);

  fclose(fp);
}

static void putword(FILE* fp, WORD val) {
  fputc(val & 0xff, fp);
  fputc((val >> 8) & 0xff, fp);
}