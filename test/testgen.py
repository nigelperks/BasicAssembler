# Generate all combinations of x86 instructions
# and test the assembler and disassembler on them.
# Driven by table containing descriptions from instruction reference
# e.g. "ADC r/m8, r8" ~ ("ADC", "r/m8", "r8").
# Requires the particular third party assembler & linker to generate golden
# references.
# Copyright (c) 2021-2 Nigel Perks

# testgen clean       -- delete working subdirectory "temp"
# testgen list [NAME] -- list all cases, or cases for opcode name
# testgen NUM         -- generate and run test number NUM in the list
# testgen             -- generate and run all tests

import sys
import os
import subprocess
from glob import glob
import shutil

from testlib import *


####################
# GLOBAL CONSTANTS #
####################

REG8 = ["AL","CL","DL","BL","AH","CH","DH","BH"]

REG16 = ["AX","CX","DX","BX","SP","BP","SI","DI"]

SREG    = ["DS", "ES", "SS"]
SREG_CS = ["DS", "ES", "SS", "CS"]

SEG_OVERRIDES = ["", "CS:", "DS:", "ES:", "SS:"]

SUFFIX = "abcdefghijklmnopqrstuvwxyz"

TEMP_DIR = "temp"


####################
# GLOBAL VARIABLES #
####################

insCount = 0


#####################
# GENERAL UTILITIES #
#####################

def check(cmd):
  print(">", cmd)
  r = subprocess.call(cmd)
  if r != 0:
    fatal("Command failed")

def checksys(cmd):
  print(">", cmd)
  r = os.system(cmd)
  if r != 0:
    fatal("Command failed")

def delete(pattern):
  files = glob(pattern)
  for x in files:
    print("delete", x)
    os.remove(x)

def delete_test_dir(s):
  if os.path.isdir(s):
    L = os.listdir(s)
    for x in L:
      os.remove(os.path.join(s, x))
    os.rmdir(s)


############################
# GENERATED FILE UTILITIES #
############################

def emit_head(out):
  out.write("    IDEAL\n")
  out.write("    SEGMENT image\n")
  out.write("    ASSUME CS:image, DS:image, SS:image, ES:image\n")
  out.write("    ORG 0100h\n")
  out.write("start:\n")

def emit_tail(out):
  out.write("\n")
  out.write("    ENDS\n")
  out.write("\n")
  out.write("END start\n")


######################
# INSTRUCTION TABLES #
######################

instructions_without_operands = [
# 8086
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
    "XLATB",
# 8087
    "F2XM1",
    "FABS",
    "FADD",
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
]

instructions_with_operands = [
# 8086
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
    ("XOR",    "r16",     "r/m16"),
# 8087
    # FADD
    ("FADD",   "ST",      "stack"),
    ("FADD",   "stack",   "ST"),
    ("FADD",   "dword",   None),
    ("FADD",   "qword",   None),
    # FCOM
    ("FCOM",   "ST",      None),
    ("FCOM",   "stack",   None),
    ("FCOM",   "dword",   None),
    ("FCOM",   "qword",   None),
    # FCOMP
    ("FCOMP",  "ST",      None),
    ("FCOMP",  "stack",   None),
    ("FCOMP",  "dword",   None),
    ("FCOMP",  "qword",   None),
# end marker
    (None,     None,      None)
];


##################
# GENERATE TESTS #
##################

def list_tests(name):
    n = 0
    if name is None:
        print("   0 instructions with no operand")

    for ins in instructions_with_operands:
        opcode, operand1, operand2 = ins[0], ins[1], ins[2]
        n += 1

        if opcode is None:
            break

        if name is not None and opcode.lower() != name.lower():
            continue;

        if operand1 is None:
            fatal("operand1 missing from table")

        if operand2 is None:
            print("%4d %-8s %-6s" % (n, opcode, operand1))
        else:
            print("%4d %-8s %-6s %s" % (n, opcode, operand1 + ",", operand2))


def generate_mem_addr16(opSize):
  result = []
  for segOverride in SEG_OVERRIDES:
    result.extend(generate_mem_addr16_seg(opSize, segOverride))
  return result


def generate_mem_addr16_seg(opSize, segOverride):
    bases = [
        "BX+SI",
        "BX+DI",
        "BP+SI",
        "BP+DI",
        "SI",
        "DI",
        "BP",
        "BX"
    ]
    result = []
    if opSize and not opSize.endswith(" "):
      opSize = opSize + " "
    # mod = 0: no disp, or [disp16]
    for base in bases:
        if base == "BP":
            result.append("[" + opSize + segOverride + "1234h" + "]")
        else:
            result.append("[" + opSize + segOverride + base + "]")
    # mod = 1: disp8
    for base in bases:
        result.append("[" + opSize + segOverride + base + "+7fh" + "]")
    # mod = 2: disp16
    for base in bases:
        result.append("[" + opSize + segOverride + base + "+7fffh" + "]")

    return result


def generate_rm_addr16(opSize):
    # mod = 0..2
    result = generate_mem_addr16(opSize)
    # mod = 3: register
    if opSize == "byte":
        result.extend(REG8)
    elif opSize == "word":
        result.extend(REG16)
    else:
        fatal("Unknown operand size: " + opSize)

    return result


def generate_rm(opSize):
    list1 = generate_rm_addr16(opSize)
    return [list1]


def generate_mem(opSize):
    return [generate_mem_addr16(opSize)]


def generate_operands(spec):
    global needTarget

    if spec == "m8":
        result = generate_mem("byte")
    elif spec == "m16":
        result = generate_mem("word")
    elif spec == "m":
        result = generate_mem("")
    elif spec == "m16:16":
        result = generate_mem("")
    elif spec == "r/m8":
        result = generate_rm("byte")
    elif spec == "r/m16":
        result = generate_rm("word")
    elif spec == "r8":
        result = REG8
    elif spec == "r16":
        result = REG16
    elif spec in ["AL", "AX", "CL", "DX"]:
        result = [spec]
    elif spec == "imm8":
        result = ["7fh"]
    elif spec == "imm16":
        result = ["7fffh"]
    elif spec == "rel16":
        result = ["near 2040h"]
    elif spec.isdigit():
        result = [spec]
    elif spec == "rel8":
        result = ["_target"]
        needTarget = True
    elif spec == "short":
        result = ["short _target"]
        needTarget = True
    elif spec == "Sreg":
        result = SREG
    elif spec == "SregCS":
        result = SREG_CS
    elif spec == "moffs8":
        result = ["[byte 90a0h]"]
    elif spec == "moffs16":
        result = ["[word 90a0h]"]
    elif spec == "dword":
        result = ["[dword 90a0h]"]
    elif spec == "qword":
        result = ["[qword 90a0h]"]
    elif spec == "ST":
        result = ["ST"]
    elif spec == "stack":
        result = ["ST", "ST(0)", "ST(1)", "ST(7)"]
    else:
        fatal("Unknown operand spec: " + spec)
    return result


# which operands generate so many combinations
# that instructions using them exceed a 64K segment
def multi_file_operand(op):
    return op in ["r/m8", "r/m16", "m8", "m16", "m", "m16:16"]


def generate_instruction(ins, n, files):
    opcode, operand1, operand2 = ins[0], ins[1], ins[2]

    if operand1 is None:
        fatal("Internal error: no operands")

    needTarget = False

    if operand2 is None:
        generate_one_operand(n, opcode, operand1, files)
    else:
        generate_two_operands(n, opcode, operand1, operand2, files)


def generate_two_operands(n, opcode, operand1, operand2, files):
    title = "%s %s, %s" % (opcode, operand1, operand2)
    print("Generating:", title)

    if multi_file_operand(operand1):
        opset1 = generate_operands(operand1)
        operands2 = generate_operands(operand2)
        for i, operands1 in enumerate(opset1):
            generate_operands_tests(opcode, n, SUFFIX[i], operands1, operands2, title, files)
    elif multi_file_operand(operand2):
        operands1 = generate_operands(operand1)
        opset2 = generate_operands(operand2)
        for i, operands2 in enumerate(opset2):
            generate_operands_tests(opcode, n, SUFFIX[i], operands1, operands2, title, files)
    else:
        operands1 = generate_operands(operand1)
        operands2 = generate_operands(operand2)
        generate_operands_tests(opcode, n, "", operands1, operands2, title, files)


def generate_one_operand(n, opcode, operand, files):
    title = "%s %s" % (opcode, operand)
    print("Generating:", title)

    if multi_file_operand(operand):
        opset = generate_operands(operand)
        for i, operands in enumerate(opset):
            generate_operands_tests(opcode, n, SUFFIX[i], operands, None, title, files)
    else:
        operands = generate_operands(operand)
        generate_operands_tests(opcode, n, "", operands, None, title, files)


def generate_operands_tests(opcode, n, suffix, operands1, operands2, title, files):
    global insCount

    if "-" in opcode:
        fileName = opcode.replace("-", "")[:5]
        opcode = opcode.replace("-", " ")
    elif len(opcode) > 5:
        fileName = opcode[:5]
    else:
        fileName = opcode

    fileName += "%02d%s" % (n, suffix)

    out = open(fileName + ".asm", "w")

    emit_head(out)
    out.write("    ; %s\n" % title)
    out.write("\n")

    if operands2 is None:
        for oper1 in operands1:
            out.write("    %-6s %s\n" % (opcode, oper1))
            insCount += 1
    else:
        for oper1 in operands1:
            for oper2 in operands2:
                out.write("    %-6s %s, %s\n" % (opcode, oper1, oper2))
                insCount += 1

#   if needTarget:
    out.write("    nop\n");
    out.write("    nop\n");
    out.write("_target:\n");
    out.write("    nop\n");
    out.write("    nop\n");

    emit_tail(out)
    out.close()

    files.append(fileName)

def generate_no_operand_instructions(opcodeRequested, files):
    global insCount

    if opcodeRequested is not None:
        opcodeRequested = opcodeRequested.upper()

    out = open("gen.asm", "w")
    try:
        emit_head(out)
        written = 0
        for opcode in instructions_without_operands:
            if opcodeRequested is not None and opcode != opcodeRequested:
                continue
            out.write("    %s\n" % opcode)
            written += 1
            insCount += 1
        emit_tail(out)
    finally:
        out.close()
    if written > 0:
        files.append("gen")


def generate_instructions_with_operands(files):
    # cannot put entire opcode in one source file - exceeds 64K machine code
    current_opcode = None
    n = 0
    for ins in instructions_with_operands:
        opcode = ins[0]
        if opcode != current_opcode:
            n = 1
            current_opcode = opcode
        else:
            n += 1
        if opcode is not None:
            generate_instruction(ins, n, files)


def generate_test_number(testNo, ordinal, files):
    if testNo == 0:
        generate_no_operand_instructions(None, files)
    elif testNo >= 1 and testNo < len(instructions_with_operands):
        ins = instructions_with_operands[testNo-1]
        generate_instruction(ins, ordinal, files)
    else:
        fatal("unknown test number %d" % testNo)



def number(s, dflt):
    if s == "":
        return dflt
    if not s.isdigit():
        fatal("Number expected: " + s)
    return int(s)


def generate_test_named(name, files):
    name = name.upper()

    generate_no_operand_instructions(name, files)

    n = 0
    for ins in instructions_with_operands:
        if ins[0] == name:
            n += 1
            generate_instruction(ins, n, files)

    if files == []:
        fatal("Found no tests named %s" % name)



########################################
# USING REFERENCE ASSEMBLER AND LINKER #
########################################

def produce_tasm_references(config, files, keepDosBox):
  testDirMounted = os.path.join(config["DosBoxMount"], config["DosBoxTestDir"])
  delete_test_dir(testDirMounted)
  os.mkdir(testDirMounted)
  needed = []
  batchName = os.path.join(config["DosBoxMount"], "job.bat")
  bat = open(batchName, "w")
  try:
    bat.write("cd %s\n" % config["DosBoxTestDir"])
    for x in files:
      bat.write("tasm /m10 " + x + "\n")
      bat.write("if errorlevel 1 goto end\n")
      bat.write("tlink /t " + x + "\n")
      bat.write("if errorlevel 1 goto end\n")
      shutil.copy2(x + ".asm", testDirMounted)
    bat.write("cd \\\n")
    bat.write("echo OK > OK\n")
    bat.write(":end\n")
  finally:
    bat.close()
  OK = os.path.join(config["DosBoxMount"], "OK")
  remove(OK)
  os.system("dosbox %s %s" % ("" if keepDosBox else "-exit", batchName))
  if not os.path.isfile(OK):
    fatal("DosBox job failed to produce TASM reference files")


#############
# RUN TESTS #
#############

def test_disassembler(tools, binName):
    checksys("%s -s %s > dis.out" % (tools["bdis"], binName))

    d = open("distest.asm", "w")
    d.write("IDEAL\n")
    d.write("SEGMENT image\n")
    d.write("ASSUME  CS:image, DS:image, SS:image, ES:image\n")
    d.write("ORG     0100h\n")
    d.write("start:\n")

    e = open("dis.out")
    dislines = e.readlines()
    i = 0
    while i < len(dislines):
        line = dislines[i]
#       lo = line.strip().lower()
#       if "xchg" in lo and "ax, ax" in lo:
#           line = "nop\n"
#       elif lo == "rep" or lo == "repe" or lo == "repne":
#           i += 1
#           line = lo + " " + dislines[i]
        d.write(line)
        i += 1
    e.close()

    d.write("ENDS\n")
    d.write("END     start\n")
    d.close()

    check("%s distest.asm" % tools["bas"])
    check("%s distest.obj -o distest.bin" % tools["blink"])
    check("fc /b %s distest.bin" % binName)


def test_file(config, tools, name):
  print()
  banner(name)
  print()
  testDirMounted = os.path.join(config["DosBoxMount"], config["DosBoxTestDir"])
  refName = os.path.join(testDirMounted, name + ".com")
  if not os.path.isfile(refName):
    fatal("Reference file not found: " + refName)
  check("%s %s.asm" % (tools["bas"], name))
  check("%s %s.obj" % (tools["blink"], name))
  check("fc /b %s a.com" % refName)
  test_disassembler(tools, "a.com")

def test_files(config, tools, files):
  for x in files:
    test_file(config, tools, x)


########
# MAIN #
########

def main(argv):
  global insCount

  argc = len(argv)
  if argc > 1:
    if argv[1] in ["list", "-list"]:
      if argc > 2:
        list_tests(argv[2])
      else:
        list_tests(None)
      sys.exit(0)
    elif argv[1] in ["clean", "-clean"]:
      if argc > 2:
        fatal("unexpected argument to clean: " + argv[2])
      delete_test_dir(TEMP_DIR)
      sys.exit(0)

  if argc < 2 or argc > 3:
    fatal("Usage: testgen.py executables-directory [pattern]")

  executables = argv[1]
  pattern = argv[2] if argc >= 3 else None

  if not os.path.isdir(executables):
    fatal("Usage: testgen.py executables-directory [pattern]")

  tools = find_tools(executables, ["bas","blink","bdis"])
  print_tools(tools)
  config = load_root_config(CONFIG_NAME)

  insCount = 0
# needTarget = False

  files = []
  keepDosBox = False

  startDir = os.getcwd()
  delete_test_dir(TEMP_DIR)
  os.mkdir(TEMP_DIR)
  os.chdir(TEMP_DIR)
  with open("test.cfg", "w") as f:
    f.write("Suppress=1\n")

  if pattern is not None:
    if pattern.isdigit():
      generate_test_number(int(pattern), 1, files)
    else:
      generate_test_named(pattern, files)
  else:
    generate_no_operand_instructions(None, files)
    generate_instructions_with_operands(files)

  produce_tasm_references(config, files, keepDosBox)

  test_files(config, tools, files)

  print("**************************************************")
  print("Testing reached completion with no failures.")
  print("Tests completed:", len(files))
  print("Instruction/operand combinations tested:", insCount)
  print("**************************************************")

  os.chdir(startDir)


if __name__ == "__main__":
  main(sys.argv)
