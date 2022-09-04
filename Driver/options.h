// Basic Assembler
// Copyright (c) 2022 Nigel Perks
// Basic Assembler and Linker driver

#ifndef OPTIONS_H
#define OPTIONS_H

#include <stdbool.h>
#include "stringlist.h"

typedef struct {
#ifdef UNIT_TEST
  bool unit_test;
#endif
  char* program_dir;
  STRINGLIST* sources;
  bool assemble_only;
  bool max_errors_set;
  unsigned max_errors;
  char* output_name;
  const char* format;
  const char* mapfile;
  bool report_memory;
  unsigned verbose;
} OPTIONS;

OPTIONS* new_options(void);
void delete_options(OPTIONS*);

OPTIONS* process_argv(int argc, char* argv[]);

#endif // OPTIONS_H
