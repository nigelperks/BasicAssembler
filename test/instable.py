# Instruction table for import into different kinds of tests.
# Copyright (c) 2021-2 Nigel Perks

####################
# GLOBAL CONSTANTS #
####################

REG8 = ["AL","CL","DL","BL","AH","CH","DH","BH"]

REG16 = ["AX","CX","DX","BX","SP","BP","SI","DI"]

SREG    = ["DS", "ES", "SS"]
SREG_CS = ["DS", "ES", "SS", "CS"]

SEG_OVERRIDES = ["", "CS:", "DS:", "ES:", "SS:"]


######################
# INSTRUCTION TABLES #
######################

instructions_without_operands_8086 = [
    "AAA",
    "AAD",
    "AAM",
    "AAS",
    "CBW",
    "CLC",
    "CLD",
    "CLI",
    "CMC",
    "CMPSB",
    "CMPSW",
    "CWD",
    "DAA",
    "DAS",
    "HLT",
    "INTO",
    "IRET",
    "IRETW",
    "LAHF",
    "LODSB",
    "LODSW",
    "MOVSB",
    "MOVSW",
    "NOP",
    "POPF",
    "POPFW",
    "PUSHF",
    "PUSHFW",
    "REP   MOVSB",
    "REP   MOVSW",
    "REP   STOSB",
    "REP   STOSW",
    "REPE  CMPSB",
    "REPE  CMPSW",
    "REPE  SCASB",
    "REPE  SCASW",
    "REPNE CMPSB",
    "REPNE CMPSW",
    "REPNE SCASB",
    "REPNE SCASW",
    "RET",
    "RETF",
    "RETN",
    "SAHF",
    "SCASB",
    "SCASW",
    "STC",
    "STD",
    "STI",
    "STOSB",
    "STOSW",
    "WAIT",
    "XLATB"
]

instructions_without_operands_8087 = [
    "F2XM1",
    "FABS",
    "FADD",
    "FADDP",
    "FCHS",
    "FCLEX",
    "FNCLEX",
    "FCOM",
    "FCOMP",
    "FCOMPP",
    "FDECSTP",
    "FDISI",
    "FNDISI",
    "FDIV",
    "FDIVP",
    "FDIVR",
    "FDIVRP",
    "FENI",
    "FNENI",
    "FFREE",
    "FINCSTP",
    "FINIT",
    "FNINIT",
    "FLD",
    "FLDLG2",
    "FLDLN2",
    "FLDL2E",
    "FLDL2T",
    "FLDPI",
    "FLDZ",
    "FLD1",
    "FMUL",
    "FMULP",
    "FNOP",
    "FPATAN",
    "FPREM",
    "FPTAN",
    "FRNDINT",
    "FSCALE",
    "FSQRT",
    "FST",
    "FSTP",
    "FSUB",
    "FSUBP",
    "FSUBR",
    "FSUBRP",
    "FTST",
    "FXAM",
    "FXCH",
    "FXTRACT",
    "FYL2X",
    "FYL2XP1",
    "FWAIT"
]

instructions_without_operands_286N = [
    "INSB",
    "INSW",
    "LEAVE",
    "OUTSB",
    "OUTSW",
    "PUSHA",
    "REP INSB",
    "REP INSW",
    "REP OUTSB",
    "REP OUTSW"
]

instructions_without_operands_286P = [
    "CLTS"
]

instructions_without_operands_287 = [
    "FSETPM"
]

instruction_sets_without_operands = [
  (instructions_without_operands_8086, None),
  (instructions_without_operands_8087, None),
  (instructions_without_operands_286N, "P286N"),
  (instructions_without_operands_286P, "P286"),
  (instructions_without_operands_287, "P286N")
]

instructions_with_operands_8086 = [
    # ADC
    ("ADC",    "r/m8",    "r8"),
    ("ADC",    "r/m16",   "r16"),
    ("ADC",    "r8",      "r/m8"),
    ("ADC",    "r16",     "r/m16"),
    ("ADC",    "AL",      "imm8"),
    ("ADC",    "AX",      "imm16"),
    ("ADC",    "r/m8",    "imm8"),
    ("ADC",    "r/m16",   "imm16"),
    ("ADC",    "r/m16",   "imm8"),
    # ADD
    ("ADD",    "AL",      "imm8"),
    ("ADD",    "AX",      "imm16"),
    ("ADD",    "r/m8",    "imm8"),
    ("ADD",    "r/m16",   "imm16"),
    ("ADD",    "r/m16",   "imm8"),
    ("ADD",    "r/m8",    "r8"),
    ("ADD",    "r/m16",   "r16"),
    ("ADD",    "r8",      "r/m8"),
    ("ADD",    "r16",     "r/m16"),
    # AND
    ("AND",    "r/m8",    "r8"),
    ("AND",    "r/m16",   "r16"),
    ("AND",    "r8",      "r/m8"),
    ("AND",    "r16",     "r/m16"),
    ("AND",    "AL",      "imm8"),
    ("AND",    "AX",      "imm16"),
    ("AND",    "r/m8",    "imm8"),
    ("AND",    "r/m16",   "imm16"),
    ("AND",    "r/m16",   "imm8"),
    # CALL
    ("CALL",   "rel16",   None),
    ("CALL",   "r/m16",   None),
    # CMP
    ("CMP",    "AL",      "imm8"),
    ("CMP",    "AX",      "imm16"),
    ("CMP",    "r/m8",    "imm8"),
    ("CMP",    "r/m16",   "imm16"),
    ("CMP",    "r/m16",   "imm8"),
    ("CMP",    "r/m8",    "r8"),
    ("CMP",    "r/m16",   "r16"),
    ("CMP",    "r8",      "r/m8"),
    ("CMP",    "r16",     "r/m16"),
    # DEC
    ("DEC",    "r/m8",    None),
    ("DEC",    "r/m16",   None),
    ("DEC",    "r16",     None),
    # DIV
    ("DIV",    "r/m8",    None),
    ("DIV",    "r/m16",   None),
    # IDIV
    ("IDIV",   "r/m8",    None),
    ("IDIV",   "r/m16",   None),
    # IMUL
    ("IMUL",   "r/m8",    None),
    ("IMUL",   "r/m16",   None),
    # IN
    ("IN",     "AL",      "imm8"),
    ("IN",     "AX",      "imm8"),
    ("IN",     "AL",      "DX"),
    ("IN",     "AX",      "DX"),
    # INC
    ("INC",    "r/m8",    None),
    ("INC",    "r/m16",   None),
    ("INC",    "r16",     None),
    # INT
    ("INT",    "3",       None),
    ("INT",    "imm8",    None),
    # Jcc
    ("JA",     "rel8",    None),
    ("JAE",    "rel8",    None),
    ("JB",     "rel8",    None),
    ("JBE",    "rel8",    None),
    ("JC",     "rel8",    None),
    ("JCXZ",   "rel8",    None),
    ("JE",     "rel8",    None),
    ("JZ",     "rel8",    None),
    ("JG",     "rel8",    None),
    ("JGE",    "rel8",    None),
    ("JL",     "rel8",    None),
    ("JLE",    "rel8",    None),
    ("JNA",    "rel8",    None),
    ("JNAE",   "rel8",    None),
    ("JNB",    "rel8",    None),
    ("JNBE",   "rel8",    None),
    ("JNC",    "rel8",    None),
    ("JNE",    "rel8",    None),
    ("JNG",    "rel8",    None),
    ("JNGE",   "rel8",    None),
    ("JNL",    "rel8",    None),
    ("JNLE",   "rel8",    None),
    ("JNO",    "rel8",    None),
    ("JNP",    "rel8",    None),
    ("JNS",    "rel8",    None),
    ("JNZ",    "rel8",    None),
    ("JO",     "rel8",    None),
    ("JP",     "rel8",    None),
    ("JPE",    "rel8",    None),
    ("JPO",    "rel8",    None),
    ("JS",     "rel8",    None),
    ("JZ",     "rel8",    None),
    # JMP
    ("JMP",    "short",   None),
    ("JMP",    "rel16",   None),
    ("JMP",    "r/m16",   None),
    # LEA
    ("LEA",    "r16",     "m16"),
    # LOOP
    ("LOOP",   "rel8",    None),
    ("LOOPE",  "rel8",    None),
    ("LOOPZ",  "rel8",    None),
    ("LOOPNE", "rel8",    None),
    ("LOOPNZ", "rel8",    None),
    # MOV
    ("MOV",    "r/m8",    "r8"),
    ("MOV",    "r/m16",   "r16"),
    ("MOV",    "r8",      "r/m8"),
    ("MOV",    "r16",     "r/m16"),
    ("MOV",    "r/m16",   "SregCS"),
    ("MOV",    "Sreg",    "r/m16"),
    ("MOV",    "AL",      "moffs8"),
    ("MOV",    "AX",      "moffs16"),
    ("MOV",    "moffs8",  "AL"),
    ("MOV",    "moffs16", "AX"),
    ("MOV",    "r8",      "imm8"),
    ("MOV",    "r16",     "imm16"),
    ("MOV",    "r/m8",    "imm8"),
    ("MOV",    "r/m16",   "imm16"),
    # MUL
    ("MUL",    "r/m8",    None),
    ("MUL",    "r/m16",   None),
    # NEG
    ("NEG",    "r/m8",    None),
    ("NEG",    "r/m16",   None),
    # NOT
    ("NOT",    "r/m8",    None),
    ("NOT",    "r/m16",   None),
    # OR
    ("OR",     "AL",      "imm8"),
    ("OR",     "AX",      "imm16"),
    ("OR",     "r/m8",    "imm8"),
    ("OR",     "r/m16",   "imm16"),
    ("OR",     "r/m16",   "imm8"),
    ("OR",     "r/m8",    "r8"),
    ("OR",     "r/m16",   "r16"),
    ("OR",     "r8",      "r/m8"),
    ("OR",     "r16",     "r/m16"),
    # OUT
    ("OUT",    "imm8",    "AL"),
    ("OUT",    "imm8",    "AX"),
    ("OUT",    "DX",      "AL"),
    ("OUT",    "DX",      "AX"),
    # POP
    ("POP",    "m16",     None),
    ("POP",    "r16",     None),
    # PUSH
    ("PUSH",   "m16",     None),
    ("PUSH",   "r16",     None),
    # RCL
    ("RCL",    "r/m8",    "1"),
    ("RCL",    "r/m8",    "CL"),
    ("RCL",    "r/m16",   "1"),
    ("RCL",    "r/m16",   "CL"),
    # RCR
    ("RCR",    "r/m8",    "1"),
    ("RCR",    "r/m8",    "CL"),
    ("RCR",    "r/m16",   "1"),
    ("RCR",    "r/m16",   "CL"),
    # ROL
    ("ROL",    "r/m8",    "1"),
    ("ROL",    "r/m8",    "CL"),
    ("ROL",    "r/m16",   "1"),
    ("ROL",    "r/m16",   "CL"),
    # ROR
    ("ROR",    "r/m8",    "1"),
    ("ROR",    "r/m8",    "CL"),
    ("ROR",    "r/m16",   "1"),
    ("ROR",    "r/m16",   "CL"),
    # SAL
    ("SAL",    "r/m8",    "1"),
    ("SAL",    "r/m8",    "CL"),
    ("SAL",    "r/m16",   "1"),
    ("SAL",    "r/m16",   "CL"),
    # SAR
    ("SAR",    "r/m8",    "1"),
    ("SAR",    "r/m8",    "CL"),
    ("SAR",    "r/m16",   "1"),
    ("SAR",    "r/m16",   "CL"),
    # SHL
    ("SHL",    "r/m8",    "1"),
    ("SHL",    "r/m8",    "CL"),
    ("SHL",    "r/m16",   "1"),
    ("SHL",    "r/m16",   "CL"),
    # SHR
    ("SHR",    "r/m8",    "1"),
    ("SHR",    "r/m8",    "CL"),
    ("SHR",    "r/m16",   "1"),
    ("SHR",    "r/m16",   "CL"),
    # SBB
    ("SBB",    "AL",      "imm8"),
    ("SBB",    "AX",      "imm16"),
    ("SBB",    "r/m8",    "imm8"),
    ("SBB",    "r/m16",   "imm16"),
    ("SBB",    "r/m16",   "imm8"),
    ("SBB",    "r/m8",    "r8"),
    ("SBB",    "r/m16",   "r16"),
    ("SBB",    "r8",      "r/m8"),
    ("SBB",    "r16",     "r/m16"),
    # SUB
    ("SUB",    "AL",      "imm8"),
    ("SUB",    "AX",      "imm16"),
    ("SUB",    "r/m8",    "imm8"),
    ("SUB",    "r/m16",   "imm16"),
    ("SUB",    "r/m16",   "imm8"),
    ("SUB",    "r/m8",    "r8"),
    ("SUB",    "r/m16",   "r16"),
    ("SUB",    "r8",      "r/m8"),
    ("SUB",    "r16",     "r/m16"),
    # TEST
    ("TEST",   "AL",      "imm8"),
    ("TEST",   "AX",      "imm16"),
    ("TEST",   "r/m8",    "imm8"),
    ("TEST",   "r/m16",   "imm16"),
    ("TEST",   "r/m8",    "r8"),
    ("TEST",   "r/m16",   "r16"),
    ("TEST",   "r8",      "r/m8"),
    ("TEST",   "r16",     "r/m16"),
    # XCHG
    ("XCHG",   "r/m8",    "r8"),
    ("XCHG",   "r8",      "r/m8"),
    ("XCHG",   "r/m16",   "r16"),
    ("XCHG",   "r16",     "r/m16"),
    ("XCHG",   "AX",      "r16"),
    ("XCHG",   "r16",     "AX"),
    # XOR
    ("XOR",    "AL",      "imm8"),
    ("XOR",    "AX",      "imm16"),
    ("XOR",    "r/m8",    "imm8"),
    ("XOR",    "r/m16",   "imm16"),
    ("XOR",    "r/m16",   "imm8"),
    ("XOR",    "r/m8",    "r8"),
    ("XOR",    "r/m16",   "r16"),
    ("XOR",    "r8",      "r/m8"),
    ("XOR",    "r16",     "r/m16")
]

instructions_with_operands_8087 = [
    # FADD
    ("FADD",   "ST",      "stack"),
    ("FADD",   "stack",   "ST"),
    ("FADD",   "dword",   None),
    ("FADD",   "qword",   None),
    # FADDP
    ("FADDP",  "stack",   "ST"),
    # FBLD
    ("FBLD",   "tbyte",   None),
    # FBSTP
    ("FBSTP",  "tbyte",   None),
    # FCOM
    ("FCOM",   "stack",   None),
    ("FCOM",   "dword",   None),
    ("FCOM",   "qword",   None),
    # FCOMP
    ("FCOMP",  "stack",   None),
    ("FCOMP",  "dword",   None),
    ("FCOMP",  "qword",   None),
    # FDIV
    ("FDIV",   "ST",      "stack"),
    ("FDIV",   "stack",   "ST"),
    ("FDIV",   "dword",   None),
    ("FDIV",   "qword",   None),
    ("FDIVP",  "stack",   "ST"),
    # FDIVR
    ("FDIVR",  "ST",      "stack"),
    ("FDIVR",  "stack",   "ST"),
    ("FDIVR",  "dword",   None),
    ("FDIVR",  "qword",   None),
    ("FDIVRP", "stack",   "ST"),
    # FFREE
    ("FFREE",  "stack",   None),
    # FIADD
    ("FIADD",  "word",    None),
    ("FIADD",  "dword",   None),
    # FICOM
    ("FICOM",  "word",    None),
    ("FICOM",  "dword",   None),
    # FICOMP
    ("FICOMP", "word",    None),
    ("FICOMP", "dword",   None),
    # FIDIV
    ("FIDIV",  "word",    None),
    ("FIDIV",  "dword",   None),
    # FIDIVR
    ("FIDIVR", "word",    None),
    ("FIDIVR", "dword",   None),
    # FILD
    ("FILD",   "word",    None),
    ("FILD",   "dword",   None),
    ("FILD",   "qword",   None),
    # FIMUL
    ("FIMUL",  "word",    None),
    ("FIMUL",  "dword",   None),
    # FIST
    ("FIST",   "word",    None),
    ("FIST",   "dword",   None),
    # FISTP
    ("FISTP",  "word",    None),
    ("FISTP",  "dword",   None),
    ("FISTP",  "qword",   None),
    # FISUB
    ("FISUB",  "word",    None),
    ("FISUB",  "dword",   None),
    # FISUBR
    ("FISUBR", "word",    None),
    ("FISUBR", "dword",   None),
    # FLD
    ("FLD",    "dword",   None),
    ("FLD",    "qword",   None),
    ("FLD",    "tbyte",   None),
    ("FLD",    "stack",   None),
    # FLDCW
    ("FLDCW",  "word",    None),
    # FMUL
    ("FMUL",   "dword",   None),
    ("FMUL",   "qword",   None),
    ("FMUL",   "ST",      "stack"),
    ("FMUL",   "stack",   "ST"),
    ("FMULP",  "stack",   "ST"),
    # FST
    ("FST",    "dword",   None),
    ("FST",    "qword",   None),
    ("FST",    "stack",   None),
    ("FSTP",   "dword",   None),
    ("FSTP",   "qword",   None),
    ("FSTP",   "tbyte",   None),
    ("FSTP",   "stack",   None),
    # FSTCW
    ("FSTCW",  "word",    None),
    ("FNSTCW", "word",    None),
    # FSTSW
    ("FSTSW",  "word",    None),
    ("FNSTSW", "word",    None),
    # FSUB
    ("FSUB",   "ST",      "stack"),
    ("FSUB",   "stack",   "ST"),
    ("FSUB",   "dword",   None),
    ("FSUB",   "qword",   None),
    ("FSUBP",  "stack",   "ST"),
    # FSUBR
    ("FSUBR",  "ST",      "stack"),
    ("FSUBR",  "stack",   "ST"),
    ("FSUBR",  "dword",   None),
    ("FSUBR",  "qword",   None),
    ("FSUBRP", "stack",   "ST"),
    # FXCH
    ("FXCH",   "stack",   None)
];

instructions_with_operands_286N = [
    ("BOUND",  "r16",     "m16",     None),
    ("ENTER",  "imm16",   "imm8u",   None),
    ("IMUL",   "r16",     "imm8",    None),
    ("IMUL",   "r16",     "r/m16",   "imm8"),
    ("IMUL",   "r16",     "r/m16",   "imm16"),
    ("PUSH",   "imm16",   None,      None),
    ("PUSH",   "imm8",    None,      None),
    ("RCL",    "r/m8",    "imm8",    None),
    ("RCL",    "r/m16",   "imm8",    None),
    ("RCR",    "r/m8",    "imm8",    None),
    ("RCR",    "r/m16",   "imm8",    None),
    ("ROL",    "r/m8",    "imm8",    None),
    ("ROL",    "r/m16",   "imm8",    None),
    ("ROR",    "r/m8",    "imm8",    None),
    ("ROR",    "r/m16",   "imm8",    None),
    ("SAL",    "r/m8",    "imm8",    None),
    ("SAL",    "r/m16",   "imm8",    None),
    ("SAR",    "r/m8",    "imm8",    None),
    ("SAR",    "r/m16",   "imm8",    None),
    ("SHL",    "r/m8",    "imm8",    None),
    ("SHL",    "r/m16",   "imm8",    None),
    ("SHR",    "r/m8",    "imm8",    None),
    ("SHR",    "r/m16",   "imm8",    None)
]

instructions_with_operands_286P = [
    ("ARPL",   "r/m16",   "r16",     None),
    ("LAR",    "r16",     "r/m16",   None),
    ("LGDT",   "m16:32",  None,      None),
    ("LIDT",   "m16:32",  None,      None),
    ("LLDT",   "r/m16",   None,      None),
    ("LMSW",   "r/m16",   None,      None),
    ("LSL",    "r16",     "r/m16",   None),
    ("LTR",    "r/m16",   None,      None),
    ("SGDT",   "m16:32",  None,      None),
    ("SIDT",   "m16:32",  None,      None),
    ("SLDT",   "r/m16",   None,      None),
    ("SMSW",   "r/m16",   None,      None),
    ("STR",    "r/m16",   None,      None),
    ("VERR",   "r/m16",   None,      None),
    ("VERW",   "r/m16",   None,      None)
]

instruction_sets_with_operands = [
    (instructions_with_operands_8086, None),
    (instructions_with_operands_8087, None),
    (instructions_with_operands_286N, "P286N"),
    (instructions_with_operands_286P, "P286")
]
