// EXE analysis tool
// Copyright (c) 2021 Nigel Perks

#include <stdlib.h>
#include <string.h>
#include "options.h"

static void init_options(OPTIONS* opt) {
  opt->compare = FALSE;
  opt->file_name = NULL;
  opt->second_file_name = NULL;
  opt->image = TRUE;
  opt->after_image = TRUE;
  opt->extract_image = FALSE;
}

void delete_options(OPTIONS* opt) {
  free(opt);
}

OPTIONS* parse_options(int argc, char* argv[]) {
  OPTIONS* opt = emalloc(sizeof *opt);

  init_options(opt);

  for (int i = 1; i < argc; i++) {
    const char* a = argv[i];

    if (a[0] == '-') {
      size_t len = strlen(a);
      for (size_t j = 1; j < len; j++) {
        switch (a[j]) {
          case 'a': opt->after_image = FALSE; break;
          case 'A': opt->after_image = TRUE; break;
          case 'c': opt->compare = TRUE; break;
          case 'i': opt->image = FALSE; break;
          case 'I': opt->image = TRUE; break;
          case 'x': opt->extract_image = FALSE; break;
          case 'X': opt->extract_image = TRUE; break;
          default: fatal("invalid option: -%c\n", a[j]); break;
        }
      }
    }
    else {
       if (opt->file_name == NULL)
         opt->file_name = argv[i];
       else if (opt->second_file_name == NULL)
         opt->second_file_name = argv[i];
       else
         fatal("unexpected argument: %s\n", argv[i]);
    }
  }

  if (opt->file_name == NULL)
    fatal(".EXE file name expected\n");

  if (opt->compare) {
    if (opt->second_file_name == NULL)
      fatal("second .EXE file name expected\n");
  }
  else {
    if (opt->second_file_name != NULL)
      fatal("second file name unexpected\n");
  }

  return opt;
}