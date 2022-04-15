// EXE analysis tool
// Copyright (c) 2021-2 Nigel Perks
// Command line options.

#ifndef OPTIONS_H
#define OPTIONS_H

// ExeTool options

#include "utils.h"

typedef struct {
  BOOL help;
  BOOL compare;
  const char* file_name;
  const char* second_file_name;
  BOOL image;
  BOOL after_image;
  BOOL extract_image;
  BOOL interactive;
} OPTIONS;

OPTIONS* parse_options(int argc, char* argv[]);

void delete_options(OPTIONS*);

#endif // OPTIONS_H