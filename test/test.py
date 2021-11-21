# Assembler and linker tests.
# Python 3.
# Currently specialised in how reference outputs are obtained.
# Currently not documented.
# Copyright (c) 2021 Nigel Perks

import os
import sys
import shutil
import filecmp
from glob import glob
from copy import copy

from testlib import *


######################
# GLOBAL FIXED NAMES #
######################

LINKING_ERROR_REFERENCE = "a.err"
DIFFERENCER = "diff"
SUPPRESS = "Suppress"


#####################
# GENERAL UTILITIES #
#####################

def bare_name(p):
  name = os.path.basename(p)
  if "." in name:
    name = name.rsplit(".", 1)[0]
  return name

def extension(p):
  name = os.path.basename(p)
  if "." in name:
    ext = name.rsplit(".", 1)[1]
  else:
    ext = ""
  return ext

def run(cmd):
  print(">", cmd)
  r = os.system(cmd)
  print("Exit code:", r)
  return r

def check(cmd):
  r = run(cmd)
  if r != 0:
    fatal("command failed: " + cmd)


########################################
# USING REFERENCE ASSEMBLER AND LINKER #
########################################

def run_turbo_in_dosbox(DosBoxMount, DosBoxTestDir, sourceNames, linkCOM, linkEXE, keepDosBox):
  testDirMounted = os.path.join(DosBoxMount, DosBoxTestDir)
  if not os.path.isdir(testDirMounted):
    fatal("DosBox mounted test directory not found: " + testDirMounted)
  batchName = os.path.join(DosBoxMount, "job.bat")
  bat = open(batchName, "w")
  try:
    bat.write("cd %s\n" % DosBoxTestDir)
    objects = []
    for x in sourceNames:
      if x.endswith(".asm"):
        x = x[:-4]
      bat.write("tasm /m10 " + x + "\n")
      bat.write("if errorlevel 1 goto end\n")
      objects.append(x)
      shutil.copy2(x + ".asm", testDirMounted)
    if linkCOM:
      bat.write("tlink /t " + " ".join(objects) + "\n")
      bat.write("if errorlevel 1 goto end\n")
    if linkEXE:
      bat.write("tlink " + " ".join(objects) + "\n")
      bat.write("if errorlevel 1 goto end\n")
    bat.write("cd \\\n")
    bat.write("echo OK > OK\n")
    bat.write(":end\n")
  finally:
    bat.close()
  OK = os.path.join(DosBoxMount, "OK")
  remove(OK)
  check("dosbox %s %s" % ("" if keepDosBox else "-exit", batchName))
  if not os.path.isfile(OK):
    fatal("DosBox job failed to produce TASM reference files")


##########################
# ASSEMBLING AND LINKING #
##########################

def announce(sources, target):
  desc = os.path.abspath(sources[0]) + (" ..." if len(sources) > 1 else "")
  print()
  banner(desc + " -> " + target)

def assemble(tools, sources):
  objects = []
  for x in sources:
    r = run("%s %s" % (tools["bas"], x))
    if r != 0:
      fatal("Assembler error: %d" % r)
    objects.append(bare_name(x) + ".obj")
  return objects

def compare_com(refName, outputName):
  if not os.path.isfile(refName):
    fatal("Reference not found: " + refName)
  if not os.path.isfile(outputName):
    fatal("Output COM file not found: " + outputName)
  if not filecmp.cmp(refName, outputName):
    fatal("Mismatch: " + refName + " " + os.path.abspath(outputName))
  print("Match: " + refName + " " + os.path.abspath(outputName))

def test_com(tools, config, sources):
  announce(sources, "COM")
  objects = assemble(tools, sources)
  test_com = "test.com"
  r = run("%s -fcom %s -o %s" % (tools["blink"], " ".join(objects), test_com))
  if r != 0:
    fatal("COM linking error: %d" % r)
  refName = "a.co_" if len(sources) > 1 else bare_name(sources[0]) + ".co_"
  if not os.path.isfile(refName):
    run_turbo_in_dosbox(config["DosBoxMount"], config["DosBoxTestDir"],
                        sources, linkCOM=True, linkEXE=False, keepDosBox=False)
    comName = bare_name(sources[0]) + ".COM"
    refCOM = os.path.join(config["DosBoxMount"], config["DosBoxTestDir"], comName)
    shutil.copy2(refCOM, refName)
  compare_com(refName, test_com)

def match_exe(tools, name1, name2):
  return run("%s -c %s %s" % (tools["exetool"], name1, name2)) == 0

def compare_exe(tools, refName, outputName):
  if not os.path.isfile(refName):
    fatal("Reference not found: " + refName)
  if not os.path.isfile(outputName):
    fatal("Output EXE not found: " + outputName)
  if not match_exe(tools, refName, outputName):
    fatal("Mismatch: " + refName + " " + os.path.abspath(outputName))
  print("Match: " + refName + " " + os.path.abspath(outputName))

def test_exe(tools, config, sources):
  announce(sources, "EXE")
  objects = assemble(tools, sources)
  test_exe = "test.exe"
  r = run("%s -fexe %s -o %s" % (tools["blink"], " ".join(objects), test_exe))
  if r != 0:
    fatal("EXE linking error: %d" % r)
  refName = "a.ex_" if len(sources) > 1 else bare_name(sources[0]) + ".ex_"
  if not os.path.isfile(refName):
    run_turbo_in_dosbox(config["DosBoxMount"], config["DosBoxTestDir"],
                        sources, linkCOM=False, linkEXE=True, keepDosBox=False)
    exeName = bare_name(sources[0]) + ".EXE"
    refEXE = os.path.join(config["DosBoxMount"], config["DosBoxTestDir"], exeName)
    shutil.copy2(refEXE, refName)
  compare_exe(tools, refName, test_exe)

def compare_err(refName, outputName):
  if not os.path.isfile(refName):
    fatal("Reference error file not found: " + refName)
  if not os.path.isfile(outputName):
    fatal("Error output not found: " + outputName)
  if not filecmp.cmp(refName, outputName):
    if DIFFERENCER is not None:
      run("%s %s %s" % (DIFFERENCER, refName, outputName))
    fatal("Different errors than expected")
  print("Errors were as expected")

def test_asm_error(tools, source, error_file):
  announce([source], "ERR")
  r = run("%s %s 2>err" % (tools["bas"], source))
  if r == 0:
    fatal("Assembly succeeded unexpectedly")
  compare_err(error_file, "err")

def test_link_error(tools, sources):
  announce(sources, "ERR")
  objects = assemble(tools, sources)
  test_err = "err"
  r = run("%s -fcom %s 2> %s" % (tools["blink"], " ".join(objects), test_err))
  if r == 0:
    fatal("Linking succeeded unexpectedly")
  compare_err(LINKING_ERROR_REFERENCE, test_err)

def test(tools, config, sources):
  if len(sources) == 1:
    error_file = bare_name(sources[0]) + ".err"
    if os.path.isfile(error_file):
      test_asm_error(tools, sources[0], error_file)
      return
  elif os.path.isfile(LINKING_ERROR_REFERENCE):
    test_link_error(tools, sources)
    return
  formats = config["formats"] if "formats" in config else "both"
  if formats == "com":
    test_com(tools, config, sources)
  elif formats == "exe":
    test_exe(tools, config, sources)
  elif formats == "both":
    test_com(tools, config, sources)
    test_exe(tools, config, sources)
  else:
    fatal("Invalid config: formats=" + formats)

def test_dir(tools, config, name):
  cfg = copy(config)
  os.chdir(name)
  if os.path.isfile(CONFIG_NAME):
    add_config(cfg, CONFIG_NAME)
  if not config_on(cfg, SUPPRESS):
    if config_on(cfg, "link"):
      sources = glob("*.asm")
      if sources != []:
        test(tools, cfg, sources)
    else:
      for x in glob("*.asm"):
        test(tools, cfg, [x])
  for x in glob("*"):
    if os.path.isdir(x):
      test_dir(tools, cfg, x)
  os.chdir("..")

def clean_file(name):
  ext = extension(name).lower()
  if ext in ["com","exe","obj"] or name in ["err"]:
    print("Remove:", name)
    os.remove(name)
  else:
    print("Keep:  ", name)

def clean_dir(name):
  old = os.getcwd()
  os.chdir(name)
  for x in glob("*"):
    if os.path.isfile(x):
      clean_file(x)
    elif os.path.isdir(x):
      clean_dir(x)
  os.chdir(old)

def clean(names):
  if names == []:
    clean_dir(".")
  else:
    for name in names:
      if os.path.isfile(name):
        clean_file(name)
      elif os.path.isdir(name):
        clean_dir(name)
      else:
        fatal("Nothing to clean: " + name)
  sys.exit(0)

def main(argv):
  if len(argv) > 1:
    if argv[1] == "-clean":
      clean(argv[2:])
    else:
      fatal("test.py: unrecognised parameters")

  tools = find_tools(os.path.join("..", "x64", "Debug"), ["bas","blink","exetool"])
  print_tools(tools)
  config = load_root_config(CONFIG_NAME)

  for name in glob("*"):
    if os.path.isdir(name):
      test_dir(tools, config, name)

  print()
  print("        *********************")
  print("        *    ALL PASSED!    *")
  print("        *********************")

if __name__ == "__main__":
  main(sys.argv)
