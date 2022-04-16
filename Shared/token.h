// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Assembler tokens.

#ifndef TOKEN_H
#define TOKEN_H

#include "utils.h"

#define N_SREG (4)

enum sreg { SR_ES, SR_CS, SR_SS, SR_DS };

enum reg8 { REG_AL, REG_CL, REG_DL, REG_BL, REG_AH, REG_CH, REG_DH, REG_BH };

enum reg16 { REG_AX, REG_CX, REG_DX, REG_BX, REG_SP, REG_BP, REG_SI, REG_DI };

const char* reg16_name(unsigned reg);
const char* reg8_name(unsigned reg);
const char* sreg_name(unsigned reg);

#define NO_REG (-1)

enum {
  TOK_NONE = 256,
  TOK_EOL,
  TOK_LABEL,
  TOK_NUM,
  TOK_STR,
  TOK_SREG,     // segment register
  TOK_REG8,
  TOK_REG16,
  // directives
  TOK_ASSUME,
  TOK_CODESEG,
  TOK_DB,
  TOK_DD,
  TOK_DQ,
  TOK_DT,
  TOK_DW,
  TOK_END,
  TOK_ENDS,
  TOK_EQU,
  TOK_EXTRN,
  TOK_GROUP,
  TOK_IDEAL,
  TOK_MODEL,
  TOK_ORG,
  TOK_PRIVATE,
  TOK_PROC,
  TOK_PUBLIC,
  TOK_SEGMENT,
  TOK_STACK,
  // operators
  TOK_BYTE,
  TOK_DUP,
  TOK_DWORD,
  TOK_FAR,
  TOK_NEAR,
  TOK_OFFSET,
  TOK_PTR,
  TOK_QWORD,
  TOK_SEG,
  TOK_SHORT,
  TOK_ST,
  TOK_TBYTE,
  TOK_WORD,
  // prefixes
  TOK_REP,
  TOK_REPE,
  TOK_REPZ,
  TOK_REPNE,
  TOK_REPNZ,
  // opcodes
  TOK_AAA,
  TOK_AAD,
  TOK_AAM,
  TOK_AAS,
  TOK_ADC,
  TOK_ADD,
  TOK_AND,
  TOK_CALL,
  TOK_CBW,
  TOK_CLC,
  TOK_CLD,
  TOK_CLI,
  TOK_CMC,
  TOK_CMP,
  TOK_CMPS,
  TOK_CMPSB,
  TOK_CMPSW,
  TOK_CWD,
  TOK_DAA,
  TOK_DAS,
  TOK_DEC,
  TOK_DIV,
  TOK_F2XM1,
  TOK_FABS,
  TOK_FADD,
  TOK_FADDP,
  TOK_FBLD,
  TOK_FBSTP,
  TOK_FCHS,
  TOK_FCLEX,
  TOK_FCOM,
  TOK_FCOMP,
  TOK_FCOMPP,
  TOK_FDECSTP,
  TOK_FDISI,
  TOK_FDIV,
  TOK_FDIVP,
  TOK_FDIVR,
  TOK_FDIVRP,
  TOK_FENI,
  TOK_FFREE,
  TOK_FIADD,
  TOK_FICOM,
  TOK_FICOMP,
  TOK_FINCSTP,
  TOK_FIDIV,
  TOK_FIDIVR,
  TOK_FILD,
  TOK_FIMUL,
  TOK_FINIT,
  TOK_FIST,
  TOK_FISTP,
  TOK_FISUB,
  TOK_FISUBR,
  TOK_FLDLG2,
  TOK_FLDLN2,
  TOK_FLDL2E,
  TOK_FLDL2T,
  TOK_FLDPI,
  TOK_FLD,
  TOK_FLDCW,
  TOK_FLDENV,
  TOK_FLDZ,
  TOK_FLD1,
  TOK_FMUL,
  TOK_FMULP,
  TOK_FNCLEX,
  TOK_FNDISI,
  TOK_FNENI,
  TOK_FNINIT,
  TOK_FNOP,
  TOK_FNSAVE,
  TOK_FNSTCW,
  TOK_FNSTENV,
  TOK_FNSTSW,
  TOK_FNSTW,
  TOK_FPATAN,
  TOK_FPREM,
  TOK_FPTAN,
  TOK_FRNDINT,
  TOK_FRSTOR,
  TOK_FSAVE,
  TOK_FSCALE,
  TOK_FSQRT,
  TOK_FST,
  TOK_FSTCW,
  TOK_FSTENV,
  TOK_FSTP,
  TOK_FSTSW,
  TOK_FSTW,
  TOK_FSUB,
  TOK_FSUBP,
  TOK_FSUBR,
  TOK_FSUBRP,
  TOK_FTST,
  TOK_FUCOM,
  TOK_FUCOMP,
  TOK_FWAIT,
  TOK_FXAM,
  TOK_FXCH,
  TOK_FXTRACT,
  TOK_FYL2XP1,
  TOK_HLT,
  TOK_IDIV,
  TOK_IMUL,
  TOK_IN,
  TOK_INC,
  TOK_INS,
  TOK_INSB,
  TOK_INSW,
  TOK_INT,
  TOK_INT3,
  TOK_INTO,
  TOK_IRET,
  TOK_IRETW,
  TOK_JA,
  TOK_JAE,
  TOK_JB,
  TOK_JBE,
  TOK_JC,
  TOK_JCXZ,
  TOK_JE,
  TOK_JZ,
  TOK_JG,
  TOK_JGE,
  TOK_JL,
  TOK_JLE,
  TOK_JNA,
  TOK_JNAE,
  TOK_JNB,
  TOK_JNBE,
  TOK_JNC,
  TOK_JNE,
  TOK_JNG,
  TOK_JNGE,
  TOK_JNL,
  TOK_JNLE,
  TOK_JNO,
  TOK_JNP,
  TOK_JNS,
  TOK_JNZ,
  TOK_JO,
  TOK_JP,
  TOK_JPE,
  TOK_JPO,
  TOK_JS,
  TOK_JMP,
  TOK_LAHF,
  TOK_LEA,
  TOK_LDS,
  TOK_LES,
  TOK_LOCK,
  TOK_LODS,
  TOK_LODSB,
  TOK_LODSW,
  TOK_LOOP,
  TOK_LOOPE,
  TOK_LOOPZ,
  TOK_LOOPNE,
  TOK_LOOPNZ,
  TOK_MOV,
  TOK_MOVS,
  TOK_MOVSB,
  TOK_MOVSW,
  TOK_MUL,
  TOK_NEG,
  TOK_NOP,
  TOK_NOT,
  TOK_OR,
  TOK_OUT,
  TOK_OUTS,
  TOK_OUTSB,
  TOK_OUTSW,
  TOK_POP,
  TOK_POPF,
  TOK_POPFW,
  TOK_PUSH,
  TOK_PUSHF,
  TOK_PUSHFW,
  TOK_RCL,
  TOK_RCR,
  TOK_ROL,
  TOK_ROR,
  TOK_RET,
  TOK_RETF,
  TOK_RETN,
  TOK_SAHF,
  TOK_SAL,
  TOK_SAR,
  TOK_SHL,
  TOK_SHR,
  TOK_SBB,
  TOK_SCAS,
  TOK_SCASB,
  TOK_SCASW,
  TOK_STC,
  TOK_STD,
  TOK_STI,
  TOK_STOS,
  TOK_STOSB,
  TOK_STOSW,
  TOK_SUB,
  TOK_TEST,
  TOK_WAIT,
  TOK_XCHG,
  TOK_XLAT,
  TOK_XLATB,
  TOK_XOR
};

const char* token_name(int token);

BOOL token_is_directive(int token);
BOOL token_is_opcode(int token);
BOOL token_is_repeat(int token);

int identifier_token(const char* name);
int register_token(const char* name, int *regno);

#endif // TOKEN_H
