// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// bas options.

#ifndef OPTIONS_H
#define OPTIONS_H

#include <stdbool.h>
#include "utils.h"

typedef struct {
#ifdef UNIT_TEST
  BOOL unit_test;
#endif
  char* source_name;
  BOOL print_source;
  BOOL print_intermediate;
  char* output_name;
  BOOL verbose;
  unsigned max_errors;
  BOOL report_memory;
  BOOL report_time;
  BOOL help;
  bool case_sensitive;
} Options;

Options* new_options(void);
void delete_options(Options*);
void process_argv(int argc, char* argv[], Options*);

#endif // OPTIONS_H
