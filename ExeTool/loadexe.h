// EXE analysis tool
// Copyright (c) 2021 Nigel Perks
// Load EXE file.

#ifndef LOADEXE_H
#define LOADEXE_H

#include "exeheader.h"

typedef struct {
  EXEHEADER header;
  RELOC_ITEM* reloc_table;
  BYTE* image;
  size_t image_size;
} LOADEXE;

LOADEXE* load_exe(const char* file_name);
void delete_loadexe(LOADEXE*);

RELOC_ITEM* sorted_reloc_table(RELOC_ITEM* table, unsigned elements);

#endif // LOADEXE_H