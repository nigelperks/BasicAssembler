// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Instruction table.

#ifndef INSTABLE_H
#define INSTABLE_H

#include "opclass.h"
#include "utils.h"

enum modrm {
  RMN,  // no ModR/M byte
  RRM,  // reg first operand, RM second
  RMR,  // RM first operand, reg second
  RMC,  // RM first operand, reg field constant
  MMC,  // mem first operand: mod != 3, reg constant
  SSI,  // ST, ST(i): mod == 3, reg constant, RM = REGISTER i
  SIS,  // ST(i), ST: mod == 3, reg constant, RM = REGISTER i
  SSC,  // ST, ST:    mod == 3, reg constant, RM = REGISTER 0
  SIC,  // ST(i):     mod == 3, reg constant, RM = REGISTER i
  STC,  // ST:        mod == 3, reg constant, RM = REGISTER 0
  STK,  // classic stack: FADD = FADDP ST(1), ST: mod = 3, reg constant, rm constant 1
};

enum wait_prefix { NOPR, WAIT, WAIT_PREFIXES };

BYTE opcode_prefix_code(int opcode_prefix);

#define WAIT_OPCODE (0x9B)

enum cpu { P86, P87, P286N };

bool cpu_enabled(unsigned mask, int cpu);

typedef struct {
  short op;         // token
  short oper1;      // flag indicating type of first operand (OF_NONE if none)
  short oper2;      // flag indicating type of second operand (OF_NONE if none)
  short oper3;      // flag indicating type of third operand (OF_NONE if none)
  char opcodes;     // number of opcode bytes
  char opcode_prefix;  // can be WAIT for FPU
  BYTE opcode1;     // first opcode byte
  BYTE opcode2;     // second opcode byte, if any
  char opcode_inc;  // the register operand to add to opcode1 to get the opcode value (0 neither)
  char modrm;       // ModR/M arrangement as enumerated above
  char reg;         // reg field value in a ModR/M byte of type RMC
  char imm1;        // number of immediate or OF_JUMP displacement bytes in first operand
  char imm2;        // number of immediate bytes in second operand
  char imm3;        // number of immediate bytes in third operand
  char cpu;         // processor (ISA)
} INSDEF;

extern const INSDEF instable[];

// Note that TOK_JMP ~ 0xE9/0xEB is not in the instruction table; it is a special case.

#define SHORT_JMP (0xEB)
#define NEAR_JMP  (0xE9)

BOOL opcode_lea(int opcode);

const INSDEF* find_instruc(int operation, const OPERAND_CLASS* operand1, const OPERAND_CLASS* operand2);

void print_insdef(const INSDEF*);

BOOL valid_prefix(int prefix_token, int operation_token);
BYTE repeat_code(int repeat_prefix_token);
int repeat_token(BYTE repcode, int op_token);

#endif // INSTABLE_H
