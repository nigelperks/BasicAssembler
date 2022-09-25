// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Disassembly function.

#ifndef DISASSEMBLE_H
#define DISASSEMBLE_H

#include <stdbool.h>
#include "decoder.h"
#include "utils.h"

enum {
  DECODE_ERR_NONE,
  DECODE_ERR_MULTIPLE_REPEAT_PREFIX,
  DECODE_ERR_MULTIPLE_SREG_PREFIX,
  DECODE_ERR_NO_OPCODE,
  DECODE_ERR_NO_OPCODE2,
  DECODE_ERR_NO_MODRM,
  DECODE_ERR_NO_DISP,
  DECODE_ERR_NO_IMMEDIATE,
  DECODE_ERR_NO_MATCHING_INSTRUCTION,
};

const char* decoding_error(int);

bool instruction_prefix(int byte);
bool repeat_prefix(int byte);
bool sreg_prefix(int byte);

typedef struct {
  int type;
  union {
    // OT_REG
    int reg;
    // OT_MEM
    struct dis_mem {
      short base_reg;
      short index_reg;
      short disp_size;
      WORD disp;
    } mem;
  } val;
} RM_OPERAND;

typedef struct {
  const INSDEF* def;
  BYTE rep;
  BYTE sreg_override;
  RM_OPERAND oper1;
  RM_OPERAND oper2;
  DWORD imm1;
  DWORD imm2;
  DWORD imm3;
  unsigned len;
} DECODED;

int decode_instruction(const DECODER*, const BYTE* buf, const unsigned len, DECODED*);

void print_assembly(const DWORD addr, const DECODED* dec);

#endif // DISASSEMBLE_H
