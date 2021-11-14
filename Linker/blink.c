// Basic Linker
// Copyright (c) 2021 Nigel Perks
// blink main.

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "utils.h"
#include "object.h"
#include "module.h"
#include "combine.h"
#include "consolidate.h"
#include "resolve.h"
#include "image.h"
#include "format.h"
#include "exefile.h"
#include "output.h"
#include "stringlist.h"

#ifdef UNIT_TEST
void RunAllTests(void);
#endif


// TODO: put this code, or equivalent, somewhere appropriate.
#if 0
  if (ifile->start_label == NO_SYM)
    fatal("no start symbol\n");

  org = sym_val(ifile->st, ifile->start_label);
  if (org != 0x100)
    fatal("incorrect start address: %04Xh\n", org);
#endif

int main(int argc, char* argv[]) {
  STRINGLIST* files = new_stringlist();
  const char* output_name = NULL;
  int case_sensitivity = CASE_INSENSITIVE;
  int verbose = 0;
  int format = COM_FORMAT;

  progname = "blink";

  for (int i = 1; i < argc; i++) {
    const char* arg = argv[i];
    if (arg[0] == '-') {
#ifdef UNIT_TEST
      if (strcmp(arg, "-unittest") == 0) {
        RunAllTests();
        exit(EXIT_SUCCESS); // TODO: return count of failures
      }
#endif
      if (arg[1] == 'f') {
        if (arg[2] == '\0')
          fatal("-f: output format missing\n");
        format = format_by_name(arg + 2);
      }
      else if (strcmp(arg, "-o") == 0) {
        if (++i < argc)
          output_name = argv[i];
        else
          fatal("output file name missing\n");
      }
      else {
        for (int j = 1; arg[j]; j++) {
          if (arg[j] == 'v')
            verbose++;
          else
            fatal("unknown option: %c\n", arg[j]);
        }
      }
    }
    else
      append_string(files, arg);
  }

  const unsigned modules = stringlist_count(files);

  if (modules == 0)
    fatal("no object file specified\n");

  if (output_name == NULL)
    output_name = default_output_name(format);

  SEGMENTED* segmented_program = new_segmented(output_name, case_sensitivity);

  for (unsigned i = 0; i < stringlist_count(files); i++) {
    OFILE* ofile = new_ofile();
    if (verbose)
      printf("Load object file: %s\n", stringlist_item(files, i));
    load_object_file(ofile, stringlist_item(files, i));

    SEGMENTED* module_segments = build_module_segments(ofile, case_sensitivity, verbose, stringlist_item(files, i));

    incorporate_module(segmented_program, module_segments, verbose);

    delete_segmented(module_segments);
    delete_ofile(ofile);
  }

  consolidate_groups_and_stack(segmented_program, verbose);

  resolve_fixups(segmented_program, verbose);

  IMAGE* image = build_image(segmented_program, verbose);

  if (verbose)
    printf("Output %s file: %s\n", format_name(format), output_name);

  if (format == COM_FORMAT) {
    unsigned long n = segment_and_group_fixups(segmented_program->fixups);
    if (n > 0)
      fatal("cannot produce COM file: segment fixups: %lu\n", n);
    output_com(image, output_name);
  }
  else if (format == EXE_FORMAT) {
    BUILDEXE* exe = build_exe(segmented_program, image);
    output_exe(exe, output_name);
    delete_buildexe(exe);
  }
  else
    fatal("unsupported output format: %s\n", format_name(format));

  delete_image(image);
  delete_stringlist(files);

  return 0;
}

#ifdef UNIT_TEST

#include "cutest.h"

extern CuSuite* symbol_test_suite(void);
extern CuSuite* offset_info_test_suite(void);
extern CuSuite* segment_test_suite(void);
extern CuSuite* segment_list_test_suite(void);
extern CuSuite* group_list_test_suite(void);
extern CuSuite* combine_test_suite(void);
extern CuSuite* consolidate_test_suite(void);
extern CuSuite* resolve_test_suite(void);
extern CuSuite* image_test_suite(void);
extern CuSuite* segmented_test_suite(void);

void RunAllTests(void) {
  CuString *output = CuStringNew();
  CuSuite* suite = CuSuiteNew();

  CuSuiteAddSuite(suite, symbol_test_suite());
  CuSuiteAddSuite(suite, offset_info_test_suite());
  CuSuiteAddSuite(suite, segment_test_suite());
  CuSuiteAddSuite(suite, segment_list_test_suite());
  CuSuiteAddSuite(suite, group_list_test_suite());
  CuSuiteAddSuite(suite, combine_test_suite());
  CuSuiteAddSuite(suite, consolidate_test_suite());
  CuSuiteAddSuite(suite, resolve_test_suite());
  CuSuiteAddSuite(suite, image_test_suite());
  CuSuiteAddSuite(suite, segmented_test_suite());

  CuSuiteRun(suite);
  CuSuiteSummary(suite, output);
  CuSuiteDetails(suite, output);
  printf("%s\n", output->buffer);
}

#endif /* UNIT_TEST */
