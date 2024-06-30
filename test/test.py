# Assembler and linker tests.
# Python 3.
# Currently specialised in how reference outputs are obtained.
# Currently not documented.
# Copyright (c) 2021-2,24 Nigel Perks

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

def run_turbo_in_dosbox(DosBoxMount, DosBoxTestDir, sourceNames, linkCOM, linkEXE, keepDosBox, CaseSensitive):
  testDirMounted = os.path.join(DosBoxMount, DosBoxTestDir)
  if not os.path.isdir(testDirMounted):
    fatal("DosBox mounted test directory not found: " + testDirMounted)
  batchName = os.path.join(DosBoxMount, "job.bat")
  bat = open(batchName, "w")
  tasm_options = "/m10 "
  tlink_options = ""
  if CaseSensitive:
    tasm_options += "/ml "
    tlink_options += "/c "
  try:
    bat.write("cd %s\n" % DosBoxTestDir)
    objects = []
    for x in sourceNames:
      if x.endswith(".asm"):
        x = x[:-4]
      bat.write("tasm " + tasm_options + x + "\n")
      bat.write("if errorlevel 1 goto end\n")
      objects.append(x)
      shutil.copy2(x + ".asm", testDirMounted)
    if linkCOM:
      bat.write("tlink /t " + tlink_options + " ".join(objects) + "\n")
      bat.write("if errorlevel 1 goto end\n")
    if linkEXE:
      bat.write("tlink " + tlink_options + " ".join(objects) + "\n")
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

def assemble(tools, config, sources, verbose):
  objects = []
  options = ""
  if verbose:
    options += "-v "
  if config_on(config, "CaseSensitive") or config_on(config, "CaseSensitiveAsm"):
    options += "--case-sensitive "
  for x in sources:
    r = run("%s %s %s" % (tools["bas"], options, x))
    if r != 0:
      fatal("Assembler error: %d" % r)
    objects.append(bare_name(x) + ".obj")
  return objects

def compare_raw(refName, outputName):
  if not os.path.isfile(refName):
    fatal("Reference not found: " + refName)
  if not os.path.isfile(outputName):
    fatal("Output file not found: " + outputName)
  if not filecmp.cmp(refName, outputName):
    fatal("Mismatch: " + refName + " " + os.path.abspath(outputName))
  print("Match: " + refName + " " + os.path.abspath(outputName))

def compare_map(refName, outputName):
  if not os.path.isfile(refName):
    fatal("Reference not found: " + refName)
  if not os.path.isfile(outputName):
    fatal("Output map file not found: " + outputName)
  if not filecmp.cmp(refName, outputName):
    fatal("Mismatch: " + refName + " " + os.path.abspath(outputName))
  print("Match: " + refName + " " + os.path.abspath(outputName))


def blink_options(config):
  options = ""
  if config_on(config, "CaseSensitive") or config_on(config, "CaseSensitiveLink"):
    options += "--case-sensitive "
  return options


def test_bin(tools, config, sources, verbose):
  announce(sources, "BIN")
  objects = assemble(tools, config, sources, verbose)
  test_bin = "test.bin"
  cmd = "%s -fbin %s %s -o %s" % (tools["blink"], blink_options(config), " ".join(objects), test_bin)
  if config_on(config, "mapfile"):
    cmd += " -p test.map"
  r = run(cmd)
  if r != 0:
    fatal("BIN linking error: %d" % r)
  refName = "a.bi_" if len(sources) > 1 else bare_name(sources[0]) + ".bi_"
  compare_raw(refName, test_bin)


def test_com(tools, config, sources, force_ref, getRefOnly, keepDosBox, verbose):
  announce(sources, "COM")
  if getRefOnly:
    refName = get_ref_com(config, sources, force_ref, keepDosBox)
    print("Obtained reference:", refName)
    return
  objects = assemble(tools, config, sources, verbose)
  test_com = "test.com"
  cmd = "%s -fcom %s %s -o %s" % (tools["blink"], blink_options(config), " ".join(objects), test_com)
  if config_on(config, "mapfile"):
    cmd += " -p test.map"
  r = run(cmd)
  if r != 0:
    fatal("COM linking error: %d" % r)
  refName = get_ref_com(config, sources, force_ref, keepDosBox)
  compare_raw(refName, test_com)
  if config_on(config, "mapfile"):
    compare_map("a.ma_", "test.map")
  if "dis" in config and sources != [] and sources[0] in config["dis"].split(","):
    test_com_disassembly(tools, "test.com", sources, verbose)


def test_com_disassembly(tools, comName, sources, verbose):
  announce(sources, "DISASSEMBLY")
  cmd = tools["bdis"] + " -s " + comName + " > test.dis"
  r = run(cmd)
  if r != 0:
    fatal("Disassembly error: %d" % r)
  f = open("test.dis")
  dis = f.readlines()
  f.close()

  f = open("_testdis.asm", "w")
  f.write(" IDEAL\n")
  f.write(" SEGMENT all\n")
  f.write(" ASSUME CS:all,DS:all,ES:all,SS:all\n")
  f.write(" ORG 100h\n")
  f.write("start:\n")
  f.writelines(dis)
  f.write(" ENDS\n")
  f.write(" END start\n")
  f.close()
  config = {}
  obj = assemble(tools, config, ["_testdis.asm"], verbose)

  test_com = "_testdis.com"
  cmd = "%s -fcom %s -o %s" % (tools["blink"], " ".join(obj), test_com)
  r = run(cmd)
  if r != 0:
    fatal("COM linking error: %d" % r)

  compare_raw(comName, test_com)
  os.remove("_testdis.asm")


def get_ref_com(config, sources, force_ref, keepDosBox):
  refName = "a.co_" if len(sources) > 1 else bare_name(sources[0]) + ".co_"
  if force_ref and os.path.isfile(refName):
    os.remove(refName)
  if not os.path.isfile(refName):
    run_turbo_in_dosbox(config["DosBoxMount"], config["DosBoxTestDir"],
                        sources, linkCOM=True, linkEXE=False, keepDosBox=keepDosBox,
                        CaseSensitive=config_on(config,"CaseSensitive"))
    comName = bare_name(sources[0]) + ".COM"
    refCOM = os.path.join(config["DosBoxMount"], config["DosBoxTestDir"], comName)
    shutil.copy2(refCOM, refName)
  return refName


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


def test_exe(tools, config, sources, force_ref, getRefOnly, keepDosBox, verbose):
  announce(sources, "EXE")
  if getRefOnly:
    refName = get_ref_exe(config, sources, force_ref, keepDosBox)
    print("Obtained reference:", refName)
    return
  objects = assemble(tools, config, sources, verbose)
  test_exe = "test.exe"
  r = run("%s -fexe %s %s -o %s" % (tools["blink"], blink_options(config), " ".join(objects), test_exe))
  if r != 0:
    fatal("EXE linking error: %d" % r)
  refName = get_ref_exe(config, sources, force_ref, keepDosBox)
  compare_exe(tools, refName, test_exe)


def get_ref_exe(config, sources, force_ref, keepDosBox):
  refName = "a.ex_" if len(sources) > 1 else bare_name(sources[0]) + ".ex_"
  if force_ref and os.path.isfile(refName):
    os.remove(refName)
  if not os.path.isfile(refName):
    run_turbo_in_dosbox(config["DosBoxMount"], config["DosBoxTestDir"],
                        sources, linkCOM=False, linkEXE=True, keepDosBox=keepDosBox,
                        CaseSensitive=config_on(config,"CaseSensitive"))
    exeName = bare_name(sources[0]) + ".EXE"
    refEXE = os.path.join(config["DosBoxMount"], config["DosBoxTestDir"], exeName)
    shutil.copy2(refEXE, refName)
  return refName


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

def test_asm_error(tools, config, source, error_file):
  announce([source], "ERR")
  r = run("%s %s 2>err" % (tools["bas"], source))
  if r == 0:
    fatal("Assembly succeeded unexpectedly")
  compare_err(error_file, "err")

def test_link_error(tools, config, sources, verbose):
  announce(sources, "ERR")
  objects = assemble(tools, config, sources, verbose)
  test_err = "err"
  r = run("%s -fcom %s %s 2> %s" % (tools["blink"], blink_options(config), " ".join(objects), test_err))
  if r == 0:
    fatal("Linking succeeded unexpectedly")
  compare_err(LINKING_ERROR_REFERENCE, test_err)

def test(tools, config, sources, force_ref, getRefOnly, keepDosBox, verbose):
  if not config_on(config, "link"):
    error_file = bare_name(sources[0]) + ".err"
    if os.path.isfile(error_file):
      test_asm_error(tools, config, sources[0], error_file)
      return
  elif os.path.isfile(LINKING_ERROR_REFERENCE):
    test_link_error(tools, config, sources, verbose)
    return
  formats = config["formats"] if "formats" in config else "both"
  if formats == "bin":
    test_bin(tools, config, sources, verbose)
  elif formats == "com":
    test_com(tools, config, sources, force_ref, getRefOnly, keepDosBox, verbose)
  elif formats == "exe":
    test_exe(tools, config, sources, force_ref, getRefOnly, keepDosBox, verbose)
  elif formats == "both":
    test_com(tools, config, sources, force_ref, getRefOnly, keepDosBox, verbose)
    test_exe(tools, config, sources, force_ref, getRefOnly, keepDosBox, verbose)
  else:
    fatal("Invalid config: formats=" + formats)

def test_dir(tools, config, name, force_ref, getRefOnly, keepDosBox, verbose):
  cfg = copy(config)
  os.chdir(name)
  if os.path.isfile(CONFIG_NAME):
    add_config(cfg, CONFIG_NAME)
  if not config_on(cfg, SUPPRESS):
    if os.path.isfile("test.cmd"):
      check("test.cmd")
    elif config_on(cfg, "link"):
      sources = glob("*.asm")
      if sources != []:
        test(tools, cfg, sources, force_ref, getRefOnly, keepDosBox, verbose)
    else:
      for x in glob("*.asm"):
        test(tools, cfg, [x], force_ref, getRefOnly, keepDosBox, verbose)
  for x in glob("*"):
    if os.path.isdir(x):
      test_dir(tools, cfg, x, force_ref, getRefOnly, keepDosBox, verbose)
  os.chdir("..")

# Given a test directory or source file, test it
# by processing the configurations on the path.
def test_source(tools, config, source, force_ref, getRefOnly, keepDosBox, verbose):
  cfg = copy(config)
  components = source.split(os.sep)
  saved = os.getcwd()
  if len(components) > 1:
    for i, name in enumerate(components[:-1]):
      if not os.path.isdir(name):
        fatal("Test directory not found: " + os.sep.join(components[:i+1]))
      banner("Test directory found: " + os.sep.join(components[:i+1]))
      os.chdir(name)
      if os.path.isfile(CONFIG_NAME):
        add_config(cfg, CONFIG_NAME)
  name = components[-1]
  if os.path.isdir(name):
    test_dir(tools, cfg, name, force_ref, getRefOnly, keepDosBox, verbose)
  elif os.path.isfile(name):
    if name.lower().endswith(".asm"):
      test(tools, cfg, [name], force_ref, getRefOnly, keepDosBox, verbose)
    else:
      fatal("Not a .asm source file: " + source)
  else:
    fatal("Not a test directory or source file: " + source)
  os.chdir(saved)

def clean_file(name, verbose):
  ext = extension(name).lower()
  if ext in ["bin","com","dis","exe","map","obj"] or name in ["err"]:
    print("Remove:", name)
    os.remove(name)
  elif verbose:
    print("Keep:  ", name)

def clean_dir(name, verbose):
  old = os.getcwd()
  os.chdir(name)
  for x in glob("*"):
    if os.path.isfile(x):
      clean_file(x, verbose)
    elif os.path.isdir(x):
      clean_dir(x, verbose)
  os.chdir(old)

def clean(names, verbose):
  if names == []:
    clean_dir(".", verbose)
  else:
    for name in names:
      if os.path.isfile(name):
        clean_file(name, verbose)
      elif os.path.isdir(name):
        clean_dir(name, verbose)
      else:
        fatal("Nothing to clean: " + name)

def help():
  print("Usage: test.py --clean [sources]")
  print("       test.py executables-directory [sources] [options]")
  print()
  print("Options:")
  print("  -f  --force-ref     force recreation of reference files")
  print("  -k  --keep-dosbox   keep DosBox open after running reference assembler")
  print("  -r  --get-ref-only  get new reference files only; do not test bas")
  sys.exit(1)

def main(argv):
  executables = None
  sources = []
  cleaning = False
  clean_on_success = True
  force_ref = False
  keepDosBox = False
  verbose = False
  getRefOnly = False

  for arg in argv[1:]:
    if arg[0] == '-':
      if arg == "-clean" or arg == "--clean":
        cleaning = True
      elif arg == "-f" or arg == "--force-ref":
        force_ref = True
      elif arg == "-k" or arg == "--keep-dosbox":
        keepDosBox = True
      elif arg == "-r" or arg == "--get-ref-only":
        force_ref = True
        getRefOnly = True
      elif arg == "-v":
        verbose = True
      elif arg in ["-?", "-h", "--help"]:
        help()
      else:
        fatal("test.py: unknown option: " + arg)
    elif arg == "/?":
      help()
    elif executables is None and not cleaning:
      executables = arg
    else:
      sources.append(arg)

  if cleaning:
    clean(sources, verbose)
    sys.exit(0)

  if executables is None:
    fatal("Usage: test.py executables-directory [sources]")

  tools = find_tools(executables, ["bas","bdis","blink","exetool"])
  print_tools(tools)
  config = load_root_config(CONFIG_NAME)

  os.environ["PATH"] = os.path.abspath(executables) + os.pathsep + os.environ["PATH"]
  print("PATH=" + os.environ["PATH"])

  if sources == []:
    for name in glob("*"):
      if os.path.isdir(name):
        test_dir(tools, config, name, force_ref, getRefOnly, keepDosBox, verbose)
  else:
    for source in sources:
      test_source(tools, config, source, force_ref, getRefOnly, keepDosBox, verbose)

  if clean_on_success:
    clean(sources, verbose)

  print()
  print("        *********************")
  print("        *    ALL PASSED!    *")
  print("        *********************")

if __name__ == "__main__":
  main(sys.argv)
