// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// Linker output executable formats.

#include <string.h>
#include <assert.h>
#include "format.h"
#include "utils.h"

// Output file formats

static const struct {
  char* name;
  char* output;
} formats[] = {
  // must be in same order as enum output_formats
  { "BIN", "A.BIN" },
  { "COM", "A.COM" },
  { "EXE", "A.EXE" },
};

int format_by_name(const char* name) {
  assert(name != NULL);
  for (int i = 0; i < sizeof formats / sizeof formats[0]; i++)
    if (_stricmp(formats[i].name, name) == 0)
      return i;

  fatal("unknown output format: %s\n", name);
  return -1;
}

const char* format_name(int i) {
  if (i < 0 || i >= sizeof formats / sizeof formats[0])
    fatal("output format number out of range: %d\n", i);
  return formats[i].name;
}

const char* default_output_name(int i) {
  if (i < 0 || i >= sizeof formats / sizeof formats[0])
    fatal("output format number out of range: %d\n", i);
  return formats[i].output;
}
