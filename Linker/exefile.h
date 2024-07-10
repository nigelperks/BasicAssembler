// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// MS-DOS EXE file format.

#ifndef EXEFILE_H
#define EXEFILE_H

#include "exeheader.h"
#include "image.h"
#include "segmented.h"

typedef struct {
  EXEHEADER header;
  RELOC_ITEM* reloc_table;
  IMAGE* image;
} BUILDEXE;

BUILDEXE* build_exe(SEGMENTED*, IMAGE*);
void delete_buildexe(BUILDEXE*);

void output_exe(BUILDEXE*, const char* output_name);

#endif // EXEFILE_H