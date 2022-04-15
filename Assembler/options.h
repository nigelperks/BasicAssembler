// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// bas options.

#ifndef OPTIONS_H
#define OPTIONS_H

#include "utils.h"

typedef struct {
#ifdef UNIT_TEST
  BOOL unit_test;
#endif
  char* source_name;
  BOOL print_source;
  BOOL print_intermediate;
  char* output_name;
  BOOL quiet;
  unsigned max_errors;
  BOOL report_memory;
  BOOL help;
} Options;

Options* new_options(void);
void delete_options(Options*);
void process_argv(int argc, char* argv[], Options*);

#endif // OPTIONS_H
