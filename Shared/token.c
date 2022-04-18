// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Assembler tokens.

#include <string.h>
#include <assert.h>
#include "token.h"

BOOL token_is_directive(int tok) {
  return tok >= TOK_ASSUME && tok <= TOK_SEGMENT;
}

BOOL token_is_opcode(int tok) {
  return tok >= TOK_AAA && tok <= TOK_XOR;
}

BOOL token_is_repeat(int tok) {
  return tok == TOK_REP || tok == TOK_REPE || tok == TOK_REPNE ||
         tok == TOK_REPZ || tok == TOK_REPNZ;
}

static const struct keyword {
  int token;
  const char* name;
} keywords[] = {
  // directives
  { TOK_ASSUME,  "ASSUME" },
  { TOK_CODESEG, "CODESEG" },
  { TOK_DATASEG, "DATASEG" },
  { TOK_DB,      "DB" },
  { TOK_DD,      "DD" },
  { TOK_DQ,      "DQ" },
  { TOK_DT,      "DT" },
  { TOK_DW,      "DW" },
  { TOK_END,     "END" },
  { TOK_ENDS,    "ENDS" },
  { TOK_EQU,     "EQU" },
  { TOK_EXTRN,   "EXTRN" },
  { TOK_GROUP,   "GROUP" },
  { TOK_IDEAL,   "IDEAL" },
  { TOK_MODEL,   "MODEL" },
  { TOK_ORG,     "ORG" },
  { TOK_PRIVATE, "PRIVATE" },
  { TOK_PROC,    "PROC" },
  { TOK_PUBLIC,  "PUBLIC" },
  { TOK_SEGMENT, "SEGMENT" },
  { TOK_STACK,   "STACK" },
  // operators
  { TOK_BYTE,    "BYTE" },
  { TOK_DUP,     "DUP" },
  { TOK_DWORD,   "DWORD" },
  { TOK_FAR,     "FAR" },
  { TOK_NEAR,    "NEAR" },
  { TOK_OFFSET,  "OFFSET" },
  { TOK_PTR,     "PTR" },
  { TOK_QWORD,   "QWORD" },
  { TOK_SEG,     "SEG" },
  { TOK_SHORT,   "SHORT" },
  { TOK_ST,      "ST" },
  { TOK_TBYTE,   "TBYTE" },
  { TOK_WORD,    "WORD" },
  // prefixes
  { TOK_REP,    "REP" },
  { TOK_REPE,   "REPE" },
  { TOK_REPZ,   "REPZ" },
  { TOK_REPNE,  "REPNE" },
  { TOK_REPNZ,  "REPNZ" },
  // opcodes
  { TOK_AAA,    "AAA" },
  { TOK_AAD,    "AAD" },
  { TOK_AAM,    "AAM" },
  { TOK_AAS,    "AAS" },
  { TOK_ADC,    "ADC" },
  { TOK_ADD,    "ADD" },
  { TOK_AND,    "AND" },
  { TOK_CALL,   "CALL" },
  { TOK_CBW,    "CBW" },
  { TOK_CLC,    "CLC" },
  { TOK_CLD,    "CLD" },
  { TOK_CLI,    "CLI" },
  { TOK_CMC,    "CMC" },
  { TOK_CMP,    "CMP" },
  { TOK_CMPS,   "CMPS" },
  { TOK_CMPSB,  "CMPSB" },
  { TOK_CMPSW,  "CMPSW" },
  { TOK_CWD,    "CWD" },
  { TOK_DAA,    "DAA" },
  { TOK_DAS,    "DAS" },
  { TOK_DEC,    "DEC" },
  { TOK_DIV,    "DIV" },
  { TOK_F2XM1,    "F2XM1" },
  { TOK_FABS,     "FABS" },
  { TOK_FADD,     "FADD" },
  { TOK_FADDP,    "FADDP" },
  { TOK_FBLD,     "FBLD" },
  { TOK_FBSTP,    "FBSTP" },
  { TOK_FCHS,     "FCHS" },
  { TOK_FCLEX,    "FCLEX" },
  { TOK_FCOM,     "FCOM" },
  { TOK_FCOMP,    "FCOMP" },
  { TOK_FCOMPP,   "FCOMPP" },
  { TOK_FDECSTP,  "FDECSTP" },
  { TOK_FDISI,    "FDISI" },
  { TOK_FDIV,     "FDIV" },
  { TOK_FDIVP,    "FDIVP" },
  { TOK_FDIVR,    "FDIVR" },
  { TOK_FDIVRP,   "FDIVRP" },
  { TOK_FENI,     "FENI" },
  { TOK_FFREE,    "FFREE" },
  { TOK_FIADD,    "FIADD" },
  { TOK_FICOM,    "FICOM" },
  { TOK_FICOMP,   "FICOMP" },
  { TOK_FIDIV,    "FIDIV" },
  { TOK_FIDIVR,   "FIDIVR" },
  { TOK_FILD,     "FILD" },
  { TOK_FIMUL,    "FIMUL" },
  { TOK_FINCSTP,  "FINCSTP" },
  { TOK_FINIT,    "FINIT" },
  { TOK_FIST,     "FIST" },
  { TOK_FISTP,    "FISTP" },
  { TOK_FISUB,    "FISUB" },
  { TOK_FISUBR,   "FISUBR" },
  { TOK_FLD,      "FLD" },
  { TOK_FLDCW,    "FLDCW" },
  { TOK_FLDENV,   "FLDENV" },
  { TOK_FLDLG2,   "FLDLG2" },
  { TOK_FLDLN2,   "FLDLN2" },
  { TOK_FLDL2E,   "FLDL2E" },
  { TOK_FLDL2T,   "FLDL2T" },
  { TOK_FLDPI,    "FLDPI" },
  { TOK_FLDZ,     "FLDZ" },
  { TOK_FLD1,     "FLD1" },
  { TOK_FMUL,     "FMUL" },
  { TOK_FMULP,    "FMULP" },
  { TOK_FNCLEX,   "FNCLEX" },
  { TOK_FNDISI,   "FNDISI" },
  { TOK_FNENI,    "FNENI" },
  { TOK_FNINIT,   "FNINIT" },
  { TOK_FNOP,     "FNOP" },
  { TOK_FNSAVE,   "FNSAVE" },
  { TOK_FNSTCW,   "FNSTCW" },
  { TOK_FNSTENV,  "FNSTENV" },
  { TOK_FNSTSW,   "FNSTSW" },
  { TOK_FNSTW,    "FNSTW" },
  { TOK_FPATAN,   "FPATAN" },
  { TOK_FPREM,    "FPREM" },
  { TOK_FPTAN,    "FPTAN" },
  { TOK_FRNDINT,  "FRNDINT" },
  { TOK_FRSTOR,   "FRSTOR" },
  { TOK_FSAVE,    "FSAVE" },
  { TOK_FSCALE,   "FSCALE" },
  { TOK_FSQRT,    "FSQRT" },
  { TOK_FST,      "FST" },
  { TOK_FSTCW,    "FSTCW" },
  { TOK_FSTENV,   "FSTENV" },
  { TOK_FSTP,     "FSTP" },
  { TOK_FSTSW,    "FSTSW" },
  { TOK_FSTW,     "FSTW" },
  { TOK_FSUB,     "FSUB" },
  { TOK_FSUBP,    "FSUBP" },
  { TOK_FSUBR,    "FSUBR" },
  { TOK_FSUBRP,   "FSUBRP" },
  { TOK_FTST,     "FTST" },
  { TOK_FUCOM,    "FUCOM" },
  { TOK_FUCOMP,   "FUCOMP" },
  { TOK_FWAIT,    "FWAIT" },
  { TOK_FXAM,     "FXAM" },
  { TOK_FXCH,     "FXCH" },
  { TOK_FXTRACT,  "FXTRACT" },
  { TOK_FYL2XP1,  "FYL2XP1" },
  { TOK_HLT,    "HLT" },
  { TOK_IDIV,   "IDIV" },
  { TOK_IMUL,   "IMUL" },
  { TOK_IN,     "IN" },
  { TOK_INC,    "INC" },
  { TOK_INS,    "INS" },
  { TOK_INSB,   "INSB" },
  { TOK_INSW,   "INSW" },
  { TOK_INT,    "INT" },
  { TOK_INT3,   "INT3" },
  { TOK_INTO,   "INTO" },
  { TOK_IRET,   "IRET" },
  { TOK_IRETW,  "IRETW" },
  { TOK_JA,     "JA" },
  { TOK_JAE,    "JAE" },
  { TOK_JB,     "JB" },
  { TOK_JBE,    "JBE" },
  { TOK_JC,     "JC" },
  { TOK_JCXZ,   "JCXZ" },
  { TOK_JE,     "JE" },
  { TOK_JZ,     "JZ" },
  { TOK_JG,     "JG" },
  { TOK_JGE,    "JGE" },
  { TOK_JL,     "JL" },
  { TOK_JLE,    "JLE" },
  { TOK_JNA,    "JNA" },
  { TOK_JNAE,   "JNAE" },
  { TOK_JNB,    "JNB" },
  { TOK_JNBE,   "JNBE" },
  { TOK_JNC,    "JNC" },
  { TOK_JNE,    "JNE" },
  { TOK_JNG,    "JNG" },
  { TOK_JNGE,   "JNGE" },
  { TOK_JNL,    "JNL" },
  { TOK_JNLE,   "JNLE" },
  { TOK_JNO,    "JNO" },
  { TOK_JNP,    "JNP" },
  { TOK_JNS,    "JNS" },
  { TOK_JNZ,    "JNZ" },
  { TOK_JO,     "JO" },
  { TOK_JP,     "JP" },
  { TOK_JPE,    "JPE" },
  { TOK_JPO,    "JPO" },
  { TOK_JS,     "JS" },
  { TOK_JZ,     "JZ" },
  { TOK_JMP,    "JMP" },
  { TOK_LAHF,   "LAHF" },
  { TOK_LEA,    "LEA" },
  { TOK_LDS,    "LDS" },
  { TOK_LES,    "LES" },
  { TOK_LOCK,   "LOCK" },
  { TOK_LODS,   "LODS" },
  { TOK_LODSB,  "LODSB" },
  { TOK_LODSW,  "LODSW" },
  { TOK_LOOP,   "LOOP" },
  { TOK_LOOPE,  "LOOPE" },
  { TOK_LOOPZ,  "LOOPZ" },
  { TOK_LOOPNE, "LOOPNE" },
  { TOK_LOOPNZ, "LOOPNZ" },
  { TOK_MOV,    "MOV" },
  { TOK_MOVS,   "MOVS" },
  { TOK_MOVSB,  "MOVSB" },
  { TOK_MOVSW,  "MOVSW" },
  { TOK_MUL,    "MUL" },
  { TOK_NEG,    "NEG" },
  { TOK_NOP,    "NOP" },
  { TOK_NOT,    "NOT" },
  { TOK_OR,     "OR" },
  { TOK_OUT,    "OUT" },
  { TOK_OUTS,   "OUTS" },
  { TOK_OUTSB,  "OUTSB" },
  { TOK_OUTSW,  "OUTSW" },
  { TOK_POP,    "POP" },
  { TOK_POPF,   "POPF" },
  { TOK_POPFW,  "POPFW" },
  { TOK_PUSH,   "PUSH" },
  { TOK_PUSHF,  "PUSHF" },
  { TOK_PUSHFW, "PUSHFW" },
  { TOK_RCL,    "RCL" },
  { TOK_RCR,    "RCR" },
  { TOK_ROL,    "ROL" },
  { TOK_ROR,    "ROR" },
  { TOK_RET,    "RET" },
  { TOK_RETF,   "RETF" },
  { TOK_RETN,   "RETN" },
  { TOK_SAHF,   "SAHF" },
  { TOK_SAL,    "SAL" },
  { TOK_SAR,    "SAR" },
  { TOK_SHL,    "SHL" },
  { TOK_SHR,    "SHR" },
  { TOK_SBB,    "SBB" },
  { TOK_SCAS,   "SCAS" },
  { TOK_SCASB,  "SCASB" },
  { TOK_SCASW,  "SCASW" },
  { TOK_STC,    "STC" },
  { TOK_STD,    "STD" },
  { TOK_STI,    "STI" },
  { TOK_STOS,   "STOS" },
  { TOK_STOSB,  "STOSB" },
  { TOK_STOSW,  "STOSW" },
  { TOK_SUB,    "SUB" },
  { TOK_TEST,   "TEST" },
  { TOK_WAIT,   "WAIT" },
  { TOK_XCHG,   "XCHG" },
  { TOK_XLAT,   "XLAT" },
  { TOK_XLATB,  "XLATB" },
  { TOK_XOR,    "XOR" },

  // end marker
  { TOK_NONE, NULL }
};

int identifier_token(const char* name) {
  const struct keyword * p;

  for (p = keywords; p->name; p++) {
    if (_stricmp(p->name, name) == 0)
      return p->token;
  }

  return TOK_LABEL;
}

static const struct Register {
  char* name;
  int token;
  int regno;
} registers[] = {
  { "CS", TOK_SREG, SR_CS },
  { "DS", TOK_SREG, SR_DS },
  { "ES", TOK_SREG, SR_ES },
  { "SS", TOK_SREG, SR_SS },

  { "AX", TOK_REG16, 0 },
  { "CX", TOK_REG16, 1 },
  { "DX", TOK_REG16, 2 },
  { "BX", TOK_REG16, 3 },
  { "SP", TOK_REG16, 4 },
  { "BP", TOK_REG16, 5 },
  { "SI", TOK_REG16, 6 },
  { "DI", TOK_REG16, 7 },

  { "AL", TOK_REG8, 0 },
  { "CL", TOK_REG8, 1 },
  { "DL", TOK_REG8, 2 },
  { "BL", TOK_REG8, 3 },
  { "AH", TOK_REG8, 4 },
  { "CH", TOK_REG8, 5 },
  { "DH", TOK_REG8, 6 },
  { "BH", TOK_REG8, 7 },

  { NULL, 0, 0 }
};

int register_token(const char* name, int *regno) {
  const struct Register * p;

  assert(name != NULL);
  assert(regno != NULL);

  for (p = registers; p->name; p++) {
    if (_stricmp(p->name, name) == 0) {
      *regno = p->regno;
      return p->token;
    }
  }

  return TOK_NONE;
}

const char* token_name(int tok) {
  const struct keyword * p;

  if (tok >= 32 && tok < 127) {
    static char buf[4];
    buf[0] = '\'';
    buf[1] = tok;
    buf[2] = '\'';
    buf[3] = '\0';
    return buf;
  }

  switch (tok) {
  case TOK_NONE: return "no token";
  case TOK_EOL: return "end of line";
  case TOK_LABEL: return "label";
  case TOK_NUM: return "number";
  case TOK_STR: return "string";
  case TOK_SREG: return "segment register";
  case TOK_REG8: return "8-bit register";
  case TOK_REG16: return "16-bit register";
  }

  for (p = keywords; p->name; p++) {
    if (p->token == tok)
      return p->name;
  }

  return "invalid token";
}

const char* reg16_name(unsigned reg) {
  static const char* regs[] = { "AX", "CX", "DX", "BX", "SP", "BP", "SI", "DI" };

  assert(reg < 8);
  return regs[reg];
}

const char* reg8_name(unsigned reg) {
  static const char* regs[] =  { "AL", "CL", "DL", "BL", "AH", "CH", "DH", "BH" };

  assert(reg < 8);
  return regs[reg];
}

const char* sreg_name(unsigned reg) {
  static const char* regs[] = { "ES", "CS", "SS", "DS" };

  assert(reg < 4);
  return regs[reg];
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_directive(CuTest* tc) {
  CuAssertIntEquals(tc, FALSE, token_is_directive(0));
  CuAssertIntEquals(tc, FALSE, token_is_directive(' '));
  CuAssertIntEquals(tc, FALSE, token_is_directive('='));
  CuAssertIntEquals(tc, FALSE, token_is_directive(TOK_NONE));
  CuAssertIntEquals(tc, FALSE, token_is_directive(TOK_NUM));
  CuAssertIntEquals(tc, FALSE, token_is_directive(TOK_MOV));
  CuAssertIntEquals(tc, TRUE, token_is_directive(TOK_ASSUME));
  CuAssertIntEquals(tc, TRUE, token_is_directive(TOK_CODESEG));
  CuAssertIntEquals(tc, TRUE, token_is_directive(TOK_END));
  CuAssertIntEquals(tc, TRUE, token_is_directive(TOK_ORG));
  CuAssertIntEquals(tc, TRUE, token_is_directive(TOK_SEGMENT));
}

static void test_opcode(CuTest* tc) {
  CuAssertIntEquals(tc, FALSE, token_is_opcode(0));
  CuAssertIntEquals(tc, FALSE, token_is_opcode(TOK_NUM));
  CuAssertIntEquals(tc, FALSE, token_is_opcode(TOK_END));
  CuAssertIntEquals(tc, TRUE, token_is_opcode(TOK_AAA));
  CuAssertIntEquals(tc, TRUE, token_is_opcode(TOK_INT));
  CuAssertIntEquals(tc, TRUE, token_is_opcode(TOK_MOV));
  CuAssertIntEquals(tc, TRUE, token_is_opcode(TOK_XOR));
}

static void test_repeat(CuTest* tc) {
  CuAssertIntEquals(tc, FALSE, token_is_repeat(0));
  CuAssertIntEquals(tc, FALSE, token_is_repeat(TOK_MOVSB));
  CuAssertIntEquals(tc, TRUE, token_is_repeat(TOK_REP));
  CuAssertIntEquals(tc, TRUE, token_is_repeat(TOK_REPNZ));
  CuAssertIntEquals(tc, FALSE, token_is_repeat(TOK_LOCK));
}

static void test_identifier_token(CuTest* tc) {
  CuAssertIntEquals(tc, TOK_MOV, identifier_token("mov"));
  CuAssertIntEquals(tc, TOK_MOV, identifier_token("Mov"));
  CuAssertIntEquals(tc, TOK_MOV, identifier_token("MOV"));
  CuAssertIntEquals(tc, TOK_INT, identifier_token("int"));
  CuAssertIntEquals(tc, TOK_LABEL, identifier_token("dangle"));
}

static void test_register_token(CuTest* tc) {
  int reg;

  CuAssertIntEquals(tc, TOK_NONE, register_token("MOV", &reg));
  CuAssertIntEquals(tc, TOK_NONE, register_token("Fred", &reg));

  CuAssertIntEquals(tc, TOK_SREG, register_token("CS", &reg));
  CuAssertIntEquals(tc, SR_CS, reg);

  CuAssertIntEquals(tc, TOK_SREG, register_token("SS", &reg));
  CuAssertIntEquals(tc, SR_SS, reg);
}

static void test_token_name(CuTest* tc) {
  CuAssertStrEquals(tc, "DB", token_name(TOK_DB));
  CuAssertStrEquals(tc, "INT", token_name(TOK_INT));
  CuAssertStrEquals(tc, "MOV", token_name(TOK_MOV));
  CuAssertStrEquals(tc, "end of line", token_name(TOK_EOL));
  CuAssertStrEquals(tc, "'*'", token_name('*'));
  CuAssertStrEquals(tc, "invalid token", token_name(0));
}

CuSuite* token_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_directive);
  SUITE_ADD_TEST(suite, test_opcode);
  SUITE_ADD_TEST(suite, test_repeat);
  SUITE_ADD_TEST(suite, test_identifier_token);
  SUITE_ADD_TEST(suite, test_register_token);
  SUITE_ADD_TEST(suite, test_token_name);
  return suite;
}

#endif // UNIT_TEST
