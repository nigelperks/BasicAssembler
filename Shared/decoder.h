// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Instruction decoder

#ifndef DECODER_H
#define DECODER_H

#include "instable.h"

struct insdef_node {
  const INSDEF* def;
  struct insdef_node * next;
};

typedef struct {
  char opcode_inc;
  BYTE opcode_base;
  bool opcode2_or_modrm;
  struct insdef_node * defs;
} OPCODE_INFO;

typedef struct {
  OPCODE_INFO opcodes[0x100];
} DECODER;

const DECODER* build_decoder(void);

const OPCODE_INFO* opcode_info(const DECODER*, BYTE opcode);

const INSDEF* find_unique(const OPCODE_INFO*);
const INSDEF* find_opcode2(const OPCODE_INFO*, bool waiting, BYTE opcode2);
const INSDEF* find_modrm(const OPCODE_INFO*, bool waiting, int mod, int reg, int rm);

#endif // DECODER_H
