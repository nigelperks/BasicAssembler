# Copyright (c) 2021 Nigel Perks

import os
import sys

######################
# GLOBAL FIXED NAMES #
######################

CONFIG_NAME = "test.cfg"

#####################
# GENERAL UTILITIES #
#####################

def fatal(msg):
  print("FATAL:", msg)
  sys.exit(1)

def remove(s):
  if os.path.isfile(s):
    os.remove(s)

def banner(msg):
  print((len(msg) + 4) * "*")
  print("*", msg, "*")
  print((len(msg) + 4) * "*")


#######################
# TESTS CONFIGURATION #
#######################

def find_tool(p, name):
  p = os.path.abspath(os.path.join(p, name + ".exe"))
  if not os.path.isfile(p):
    fatal("Tool not found: " + p)
  return p

def find_tools(p, names):
  tools = {}
  for t in names:
    tools[t] = find_tool(p, t)
  return tools

def print_tools(tools):
  banner("Tools found")
  for t in tools:
    print("%s=%s" % (t, tools[t]))

def process_config_line(config, line):
  L = line.split("=", 1)
  if len(L) != 2:
    fatal("Invalid config line: " + line)
  name = L[0].strip()
  val = L[1].strip()
  config[name] = val
  print("Config: %s=%s" % (name, val))

def add_config(config, name):
  banner("Configuration: " + os.path.abspath(name))
  with open(name) as f:
    line = f.readline()
    while line != "":
      process_config_line(config, line)
      line = f.readline()

def print_config(config):
  for x in config.keys():
    print(x + "=" + config[x])

def config_on(config, name):
  if name in config:
    val = config[name].lower()
    if val.isdigit():
      return int(val) > 0
    return val == "on" or val == "true"
  return False

def load_root_config(name):
  config = {}
  if os.path.isfile(name):
    add_config(config, name)
  else:
    print("Warning: no root configuration file:", name)
  return config

