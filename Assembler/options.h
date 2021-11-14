// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// bas options.

#ifndef OPTIONS_H
#define OPTIONS_H

#include "utils.h"

typedef struct {
#ifdef UNIT_TEST
  BOOL unit_test;
#endif
  const char* source;
  BOOL print_source;
  BOOL print_intermediate;
  const char* output;
  BOOL quiet;
  unsigned max_errors;
} Options;

Options* new_options(void);
void delete_options(Options*);
void process_argv(int argc, char* argv[], Options*);

#endif // OPTIONS_H
