// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Instruction decoder

#ifndef DECODER_H
#define DECODER_H

#include "instable.h"

typedef struct {
  short rm;
  short reg;
  short mod;
  short disp_size;
  WORD disp;
} MODRM;

void decode_modrm(BYTE, MODRM*);

// One INSDEF in a list.
struct insdef_node {
  const INSDEF* def;
  struct insdef_node * next;
};

// List of INSDEF having same second opcode, or all having no second opcode,
// for the same first opcode.
typedef struct opcode2_node {
  BYTE opcode2;
  bool has_modrm;
  struct insdef_node * first_def;
  struct insdef_node * last_def; // to add on the end in order of instable
  struct opcode2_node * next;
} OPCODE2_INFO;

// Lists of INSDEF having same first opcode.
// The opcode is not a field: this structure will be in an array indexed by opcode.
typedef struct {
  char opcode_inc;
  BYTE opcode_base;
  bool has_opcode2;
  OPCODE2_INFO* first_opcode2;
} OPCODE1_INFO;

// Decoding information indexed by first opcode.
typedef struct {
  OPCODE1_INFO opcodes[0x100];
} DECODER;

DECODER* build_decoder(void);
void delete_decoder(DECODER*);

const OPCODE1_INFO* opcode1_info(const DECODER*, BYTE opcode1);
const OPCODE2_INFO* opcode2_info(const OPCODE1_INFO*, BYTE opcode2);
const OPCODE2_INFO* no_opcode2_info(const OPCODE1_INFO*);

const INSDEF* opcode2_no_modrm(int opcode1, const OPCODE2_INFO*);
const INSDEF* opcode2_find_modrm(const OPCODE2_INFO*, BYTE modrm);

#endif // DECODER_H
