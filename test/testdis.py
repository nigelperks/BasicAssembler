# Test disassembly. Assumes assembler and linker work.
# Python 3.
# Copyright (c) 2021-2 Nigel Perks

import os
import sys
from glob import glob

from testlib import *
from instable import *

TEMP_DIR = "temp"

#####################
# GENERAL UTILITIES #
#####################

def bare_name(p):
  name = os.path.basename(p)
  if "." in name:
    name = name.rsplit(".", 1)[0]
  return name


def run(cmd):
  print(">", cmd)
  r = os.system(cmd)
  print("Exit code:", r)
  return r


def check(cmd):
  r = run(cmd)
  if r != 0:
    fatal("command failed: " + cmd)


def load_file_stripped(name):
  with open(name) as f:
    L = f.readlines()
  for i, x in enumerate(L):
    s = x.strip().lower()
    L[i] = " ".join(s.split())
  return L


def delete_test_dir(s):
  if os.path.isdir(s):
    L = os.listdir(s)
    for x in L:
      os.remove(os.path.join(s, x))
    os.rmdir(s)


################################
# ASSEMBLING AND DISASSEMBLING #
################################


def assemble(tools, name):
  r = run("%s %s -o test.obj" % (tools["bas"], name))
  if r != 0:
    fatal("Assembler error: %d" % r)
  return "test.obj"


def test_com(tools, name):
  print("Assembling to COM")
  obj = assemble(tools, name)
  test_com = "test.com"
  cmd = "%s -fcom %s -o %s" % (tools["blink"], obj, test_com)
  r = run(cmd)
  if r != 0:
    fatal("COM linking error: %d" % r)
  check("%s -s %s > dis" % (tools["bdis"], test_com))
  asm = load_file_stripped(name)
  dis = load_file_stripped("dis")
  compare(asm, dis, name)


CPU_DIRECTIVES = ["p286","p286n"]

def compare(asm, dis, name):
  a = 0
  d = 0
  lena = len(asm)
  lend = len(dis)
  if a < lena and match_line(asm[a], "ideal"):
    a += 1
  if a < lena and asm[a].startswith("segment "):
    a += 1
  if a < lena and asm[a].startswith("assume "):
    a += 1
  if a < lena and asm[a].startswith("org "):
    a += 1
  if a < lena and asm[a] == "start:":
    a += 1
  if a < lena and asm[a].split()[0] in CPU_DIRECTIVES:
    a += 1
  while a < lena and d < lend:
    waiting = False
    if dis[d] == "fwait" and asm[a] != "fwait" and asm[a] != "wait":
      if d+1 < lend:
        d += 1
        waiting = True
    if match_asm(asm[a], dis[d], waiting):
      a += 1
      d += 1
    else:
      break
  if a < lena and asm[a].startswith("ends "):
    a += 1
  if a < lena and asm[a].startswith("end "):
    a += 1
  if a < lena or d < lend:
    print("ASM:", "EOF" if a >= lena else asm[a])
    print("DIS:", "EOF" if d >= lend else dis[d])
    fatal("Mismatch: " + name)


def match_line(s, t):
  s = s.strip().lower()
  t = t.strip().lower()
  return s == t

JCC = {
  "jc ": "jb ",
  "jz ": "je ",
  "jna ": "jbe ",
  "jnae ": "jb ",
  "jnb ": "jae ",
  "jnbe ": "ja ",
  "jnc ": "jae ",
  "jng ": "jle ",
  "jnge ": "jl ",
  "jnl ": "jge ",
  "jnle ": "jg ",
  "jnp ": "jpo ",
  "jnz ": "jne ",
  "jp ": "jpe ",
}

def match_asm(asm, dis, waiting):
  if waiting:
    return asm == dis
  if asm.startswith("j"):
    for x in JCC:
      if asm.startswith(x) and dis.startswith(JCC[x]):
        asm = asm.replace(x, JCC[x])
  if asm.startswith("loop"):
    if asm.startswith("loopz ") and dis.startswith("loope "):
      asm = asm.replace("loopz ", "loope ")
    elif asm.startswith("loopnz ") and dis.startswith("loopne "):
      asm = asm.replace("loopnz ", "loopne ")
  if asm.startswith("sal ") and dis.startswith("shl "):
    asm = asm.replace("sal ", "shl ")
  if asm == dis:
    return True
  for over in ["byte","word","fword"]:
    prefix = "[" + over + " "
    if prefix in asm and prefix not in dis:
      tmp = asm.replace(prefix, "[")
      if tmp == dis:
        return True
  if asm == "xchg ax, ax" and dis == "nop":
    return True
  if asm in ["iret","popf","pusha","pushf"] and dis == asm + "w":
    return True
  if asm in ["ret"] and dis == asm + "n":
    return True
  if asm == "wait" and dis == "fwait":
    return True
  if dis in ["fadd","fsub","fsubr"] and asm == dis + "p":
    return True
  if asm == "fnclex" and dis == "fclex": # when dis had no WAIT
    return True
  if asm == "fndisi" and dis == "fdisi": # when dis had no WAIT
    return True
  if asm == "fneni" and dis == "feni": # when dis had no WAIT
    return True
  if asm == "fninit" and dis == "finit": # when dis had no WAIT
    return True
  if asm in ["fcom","fcomp","ffree","fld","fst","fstp","fxch"] and dis == asm + " st(1)":
    return True
  if asm in ["fdivp","fdivrp","fmulp"] and dis == asm + " st(1), st":
    return True
  if asm in ["fdiv","fdivr","fmul"] and dis == asm + "p st(1), st":
    return True
  asm_opcode = asm.split(" ")[0]
  dis_opcode = dis.split(" ")[0]
  asm_operands = asm[len(asm_opcode)+1:]
  asm_ops = [] if asm_operands == "" else asm_operands.split(", ")
  dis_operands = dis[len(dis_opcode)+1:]
  dis_ops = [] if dis_operands == "" else dis_operands.split(", ")
  if asm_opcode == "int" and asm_operands == "3":
    if dis_opcode == "int3" and dis_operands == "":
      return True
  if asm_opcode == "lea" and dis_opcode == "mov":
    if len(asm_ops) == 2 and len(dis_ops) == 2:
      if asm_ops[0] == dis_ops[0]: # same result reg
        if asm_ops[1] == "[word " + dis_ops[1] + "]":
          return True
  if asm_opcode == dis_opcode and asm_opcode in ["test","xchg"]:
    if len(asm_ops) == 2 and len(dis_ops) == 2:
      if asm_ops[0] == dis_ops[1] and asm_ops[1] == dis_ops[0]:
        return True
  # imul ax, ax, N  ~  imul ax, N
  if asm_opcode == "imul" and dis_opcode == asm_opcode:
    if len(asm_ops) == 3 and len(dis_ops) == 2:
      if asm_ops[0] == asm_ops[1] and asm_ops[0] == dis_ops[0]:
        if asm_ops[2] == dis_ops[1]:
          return True
  return False


def test_file(tools, name):
   test_com(tools, name)


def test_dir(tools, name):
  os.chdir(name)
  for x in glob("*"):
    if os.path.isdir(x):
      test_dir(tools, x)
    elif x.endswith(".asm") and os.path.isfile(x):
      test_file(tools, x)
  os.chdir("..")


def test_source(tools, source):
  components = source.split(os.sep)
  saved = os.getcwd()
  if len(components) > 1:
    for i, name in enumerate(components[:-1]):
      if not os.path.isdir(name):
        fatal("Test directory not found: " + os.sep.join(components[:i+1]))
      print("Test directory found: " + os.sep.join(components[:i+1]))
      os.chdir(name)
  name = components[-1]
  if os.path.isdir(name):
    test_dir(tools, name)
  elif os.path.isfile(name):
    if name.lower().endswith(".asm"):
      test_file(tools, name)
    else:
      fatal("Not a .asm source file: " + source)
  else:
    fatal("Not a test directory or source file: " + source)
  os.chdir(saved)


def case_file_name(t):
  name = t[0]
  if len(t) > 1 and t[1] is not None:
    name += ("_" + t[1])
    if len(t) > 2 and t[2] is not None:
      name += ("_" + t[2])
      if len(t) > 3 and t[3] is not None:
        name += ("_" + t[3])
  name = name.replace("/", "")
  return name + ".asm"


def emit_lines(f, lines):
  for line in lines:
    f.write(line)
    f.write('\n')


def gen_head(f):
  head = [
      "\tIDEAL",
      "\tSEGMENT\tMAIN",
      "\tASSUME\tCS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN",
      "\tORG\t100h",
      "start:"
  ]
  emit_lines(f, head)


def gen_tail(f):
  tail = [
      "\tENDS\tMAIN",
      "\tEND\tstart"
  ]
  emit_lines(f, tail)


RM_MEM = [
  "BX+SI",
  "BX+DI",
  "BP+SI",
  "BP+DI",
  "SI",
  "DI",
  "BP",  # disp when mod=0
  "BX"
]

def mem_operands(mod, datatype):
  L = []
  disp = ""
  if mod == 1:
    disp = "+7fh"
  elif mod == 2:
    disp = "+7fffh"
  for x in RM_MEM:
    L.append("[" + datatype + " " + x + disp + "]")
  if mod == 0:
    L[6] = "[" + datatype + " 1234h]"
  return L


def operands(spec):
  L = []
  if spec == "AL":
    L = ["AL"]
  elif spec == "CL":
    L = ["CL"]
  elif spec == "AX":
    L = ["AX"]
  elif spec == "DX":
    L = ["DX"]
  elif spec == "1":
    L = ["1"]
  elif spec == "3":
    L = ["3"]
  elif spec == "imm8":
    L = ["7fh"]
  elif spec == "imm8u":
    L = ["99h"]
  elif spec == "imm16":
    L = ["7fffh"]
  elif spec == "r8":
    L.extend(REG8)
  elif spec == "r16":
    L.extend(REG16)
  elif spec == "m16":
    L.extend(mem_operands(0, "WORD"))
    L.extend(mem_operands(1, "WORD"))
    L.extend(mem_operands(2, "WORD"))
  elif spec == "m16:32":
    L.extend(mem_operands(0, "FWORD"))
    L.extend(mem_operands(1, "FWORD"))
    L.extend(mem_operands(2, "FWORD"))
  elif spec == "r/m8":
    L.extend(mem_operands(0, "BYTE"))
    L.extend(mem_operands(1, "BYTE"))
    L.extend(mem_operands(2, "BYTE"))
    L.extend(REG8)
  elif spec == "r/m16":
    L.extend(mem_operands(0, "WORD"))
    L.extend(mem_operands(1, "WORD"))
    L.extend(mem_operands(2, "WORD"))
    L.extend(REG16)
  elif spec == "rel8" or spec == "short":
    L = ["SHORT 100h"]
  elif spec == "rel16":
    L = ["NEAR 2080h"]
  elif spec == "moffs8":
    L = ["[BYTE 1234H]"]
  elif spec == "moffs16":
    L = ["[WORD 1234H]"]
  elif spec == "Sreg":
    L = SREG
  elif spec == "SregCS":
    L = SREG_CS
  else:
    fatal("Unknown operand spec: " + spec)
  return L


def generate_operands(t, asm_name, cpu):
  print("Generating:", asm_name)
  with open(asm_name, "w") as f:
    gen_head(f)
    if cpu is not None:
      f.write("\t%s\n" % (cpu))
    if len(t) > 4:
      fatal("UNEXPECTED")
    elif len(t) > 3 and t[3] is not None:
      for op1 in operands(t[1]):
        for op2 in operands(t[2]):
          for op3 in operands(t[3]):
            f.write("\t%s\t%s, %s, %s\n" % (t[0], op1, op2, op3))
    elif len(t) > 2 and t[2] is not None:
      for op1 in operands(t[1]):
        for op2 in operands(t[2]):
          f.write("\t%s\t%s, %s\n" % (t[0], op1, op2))
    elif len(t) > 1 and t[1] is not None:
      for op in operands(t[1]):
        f.write("\t%s\t%s\n" % (t[0], op))
    else:
      fatal("UNEXPECTED")
    gen_tail(f)


def generate_without_operands(L, asm_name, cpu):
  print("Generating:", asm_name)
  with open(asm_name, "w") as f:
    gen_head(f)
    if cpu is not None:
      f.write("\t%s\n" % (cpu))
    for ins in L:
      f.write("\t%s\n" % (ins))
    gen_tail(f)


def title(ins):
  t = ins[0]
  if len(ins) > 1 and ins[1] is not None:
    t += (" " + ins[1])
    if len(ins) > 2 and ins[2] is not None:
      t += (", " + ins[2])
      if len(ins) > 3 and ins[3] is not None:
        t += (", " + ins[3])
  return t


def generate_and_test_no_operands(tools, name, inslist, cpu):
  banner(name + " no operands")
  generate_without_operands(inslist, name + ".asm", cpu)
  test_source(tools, name + ".asm")


def generate_and_test_with_operands(tools, inslist, opcode, cpu):
  for t in inslist:
    if opcode is None or t[0] == opcode.upper():
      banner(title(t))
      name = case_file_name(t)
      generate_operands(t, name, cpu)
      test_source(tools, name)


def generate_and_test(tools, opcode):
  generate_and_test_no_operands(tools, "8086", instructions_without_operands_8086, None)
  generate_and_test_no_operands(tools, "8087", instructions_without_operands_8087, "P286N")
  generate_and_test_no_operands(tools, "80286N", instructions_without_operands_286N, "P286N")
  generate_and_test_no_operands(tools, "80286P", instructions_without_operands_286P, "P286")
  generate_and_test_no_operands(tools, "80287", instructions_without_operands_287, "P286")

  generate_and_test_with_operands(tools, instructions_with_operands_8086, opcode, None)
  generate_and_test_with_operands(tools, instructions_with_operands_286N, opcode, "P286N")
  generate_and_test_with_operands(tools, instructions_with_operands_286P, opcode, "P286")


########
# MAIN #
########

def main(argv):
  executables = None
  opcode = None

  for arg in argv[1:]:
    if arg[0] == '-':
      fatal("test.py: unknown option: " + arg)
    elif executables is None:
      executables = arg
    elif opcode is None:
      opcode = arg
    else:
      fatal("Unexpected argument: " + arg)

  if executables is None:
    fatal("Usage: test.py executables-directory [opcode]")

  tools = find_tools(executables, ["bas","blink","bdis","exetool"])
  print_tools(tools)

  delete_test_dir(TEMP_DIR)
  os.mkdir(TEMP_DIR)
  os.chdir(TEMP_DIR)
  with open("test.cfg", "w") as f:
    f.write("Suppress=1\n");
  generate_and_test(tools, opcode)

  print()
  print("        *********************")
  print("        *    ALL PASSED!    *")
  print("        *********************")

if __name__ == "__main__":
  main(sys.argv)
