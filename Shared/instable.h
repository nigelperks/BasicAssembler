// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Instruction table.

#ifndef INSTABLE_H
#define INSTABLE_H

#include "operand.h"

enum modrm {
  RMN,  // no ModR/M byte
  RRM,  // reg first operand, RM second
  RMR,  // RM first operand, reg second
  RMC,  // RM first operand, reg field constant
  MMC,  // mem first operand, mod != 3, reg field constant
  SIS,  // ST(i), ST, mod == 3, reg field constant
  SSI,  // ST, ST(i), mod == 3, reg field constant
  SCC,  // mod == 3, reg constant, rm constant
  SIC,  // ST(i): mod == 3, reg constant
};

enum wait_prefix { NOPR, WAIT, WAIT_PREFIXES };

BYTE opcode_prefix_code(int opcode_prefix);

enum cpu { P86, P87 };

typedef struct {
  short op;         // token
  short oper1;      // flag indicating type of first operand (OF_NONE if none)
  short oper2;      // flag indicating type of second operand (OF_NONE if none)
  char opcodes;     // number of opcode bytes
  char opcode_prefix;  // can be WAIT for FPU
  BYTE opcode1;     // first opcode byte
  BYTE opcode2;     // second opcode byte, if any
  char opcode_inc;  // the register operand to add to opcode1 to get the opcode value (0 neither)
  char modrm;       // ModR/M arrangement as enumerated above
  char reg;         // reg field value in a ModR/M byte of type RMC
  char rm;          // rm field value for RCC
  char imm;         // number of immediate or OF_JUMP displacement bytes
  char cpu;         // processor (ISA)
} INSDEF;

// Note that TOK_JMP ~ 0xE9/0xEB is not in the instruction table; it is a special case.

#define SHORT_JMP (0xEB)
#define NEAR_JMP  (0xE9)

BOOL opcode_lea(int opcode);

const INSDEF* find_instruc(int operation, const OPERAND* oper1, const OPERAND* oper2);

#define MAX_SECOND_OPCODES (4)

enum { NO_BYTE2, OPCODE_BYTE2, MODRM_BYTE2 };

struct insdef_node {
  const INSDEF* def;
  struct insdef_node * next;
};

typedef struct {
  char opcode_inc;
  BYTE opcode_base;
  char byte2;
  struct insdef_node * defs;
} OPCODE_INFO;

typedef struct {
  OPCODE_INFO opcodes[WAIT_PREFIXES][0x100];
} DECODER;

const DECODER* build_decoder(void);

const OPCODE_INFO* opcode_info(const DECODER*, int prefix, int opcode);

const INSDEF* find_unique(const OPCODE_INFO*);
const INSDEF* find_opcode2(const OPCODE_INFO*, int opcode2);
const INSDEF* find_modrm(const OPCODE_INFO*, int mod, int reg, int rm);

const INSDEF* find_opcode(const DECODER* dec, int prefix, int opcode);

void print_insdef(const INSDEF*);

BOOL valid_prefix(int prefix_token, int operation_token);
BYTE repeat_code(int repeat_prefix_token);
int repeat_token(BYTE repcode, int op_token);

#endif // INSTABLE_H
