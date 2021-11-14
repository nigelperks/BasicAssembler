// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Manage relocation information for encoding phase of assembler (not linker).

#ifndef RELOC_H
#define RELOC_H

enum reloc_type {
  RT_NONE,
  RT_OFFSET,
  RT_SEG,
  RT_EXTERNAL,
  RT_GROUP_ABSOLUTE_JUMP,  // JMP CS:1234h where CS -> group
  RT_SECTION,
};

#endif // RELOC_H