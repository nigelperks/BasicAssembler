// EXE analysis tool
// Copyright (c) 2021-24 Nigel Perks
// Load EXE file.

#ifndef LOADEXE_H
#define LOADEXE_H

#include "exeheader.h"

typedef struct {
  EXEHEADER header;
  RELOC_ITEM* reloc_table;
  BYTE* image;
  DWORD image_size;
} LOADEXE;

LOADEXE* load_exe(const char* file_name);
void delete_loadexe(LOADEXE*);

RELOC_ITEM* sorted_reloc_table(RELOC_ITEM* table, unsigned elements);
DWORD* sorted_reloc_list(const RELOC_ITEM* table, unsigned elements);

int compare_dword(const void*, const void*);

void print_exe_header(const struct EXEHEADER *);

#endif // LOADEXE_H