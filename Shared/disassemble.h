// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Disassembly function.

#ifndef DISASSEMBLE_H
#define DISASSEMBLE_H

#include <stdbool.h>
#include "instable.h"
#include "utils.h"

enum error_bit {
  DECODE_ERR_MULTIPLE_REPEAT_PREFIX = 0x0001,
  DECODE_ERR_MULTIPLE_SREG_PREFIX = 0x0002,
  DECODE_ERR_NO_OPCODE = 0x0004,
  DECODE_ERR_NO_IMMEDIATE = 0x0008,
  DECODE_ERR_NO_OPCODE2 = 0x0010,
  DECODE_ERR_NO_MODRM = 0x0020,
  DECODE_ERR_NO_DISP = 0x0040,
  DECODE_ERR_SURPLUS = 0x0080,
};

bool repeat_prefix(int byte);
bool sreg_prefix(int byte);

typedef struct {
  short rm;
  short reg;
  short mod;
  short disp_size;
  WORD disp;
} MODRM;

void decode_modrm(BYTE, MODRM*);

void disassemble_instruction(const DECODER* dec, const DWORD addr, const BYTE buf[], unsigned size, unsigned *errors);

void print_decoding_errors(unsigned error_flags, FILE* output_stream);

#endif // DISASSEMBLE_H
