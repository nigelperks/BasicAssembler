// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// bas main.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "options.h"
#include "source.h"
#include "ifile.h"
#include "utils.h"
#include "sourcepass.h"
#include "pass1.h"
#include "resize.h"
#include "encoding.h"
#include "object.h"

#ifdef UNIT_TEST
void RunAllTests(void);
#endif

static char* default_object_name(const char* source);

int main(int argc, char* argv[]) {
  Options* opts = NULL;
  SOURCE* src = NULL;
  IFILE* ifile = NULL;
  OFILE* ofile = NULL;

  opts = new_options();

  process_argv(argc, argv, opts);

#ifdef UNIT_TEST
  if (opts->unit_test) {
    RunAllTests();
    exit(EXIT_SUCCESS); // TODO: return count of failures
  }
#endif

  assert(opts->source != NULL);
  src = load_source_file(opts->source);
  assert(src != NULL);

  if (opts->print_source) {
    print_source(src);
    exit(EXIT_SUCCESS);
  }

  ifile = new_ifile(src);

  source_pass(ifile, opts);
  if (opts->print_intermediate)
    print_intermediate(ifile, "AFTER SOURCE PASS", PRINT_SOURCE_NAME);

  pass1(ifile, opts);
  if (opts->print_intermediate)
    print_intermediate(ifile, "AFTER PASS 1", PRINT_SIZE);

  if (ifile->provisional_sizes) {
    BOOL resized;
    do {
      resized = resize_pass(ifile, opts);
      if (opts->print_intermediate)
        print_intermediate(ifile, "AFTER RESIZE PASS", PRINT_SIZE);
    } while (resized);
  }

  ofile = encoding_pass(ifile, opts);
  if (opts->print_intermediate)
    print_intermediate(ifile, "AFTER ENCODING PASS", PRINT_SIZE);

  if (opts->output == NULL)
    opts->output = default_object_name(opts->source);
  save_object_file(ofile, opts->output);

  delete_ofile(ofile);
  delete_source(src);

  return 0;
}

static char* default_object_name(const char* source) {
  assert(source != NULL);
  size_t len = strlen(source);
  if (len > 4 && strcmp(source + len - 4, ".asm") == 0) {
    char* t = estrdup(source);
    strcpy(t + len - 3, "obj");
    return t;
  }
  if (len > 4 && strcmp(source + len - 4, ".ASM") == 0) {
    char* t = estrdup(source);
    strcpy(t + len - 3, "OBJ");
    return t;
  }
  return estrdup("a.obj");
}

#ifdef UNIT_TEST

#include "cutest.h"

extern CuSuite* utils_test_suite(void);
extern CuSuite* source_test_suite(void);
extern CuSuite* token_test_suite(void);
extern CuSuite* symbol_test_suite(void);
extern CuSuite* lexer_test_suite(void);
extern CuSuite* ifile_test_suite(void);
extern CuSuite* sourcepass_test_suite(void);
extern CuSuite* instable_test_suite(void);
extern CuSuite* options_test_suite(void);
extern CuSuite* operand_test_suite(void);
extern CuSuite* parse_test_suite(void);
extern CuSuite* encoding_test_suite(void);

void RunAllTests(void) {
  CuString *output = CuStringNew();
  CuSuite* suite = CuSuiteNew();

  CuSuiteAddSuite(suite, utils_test_suite());
  CuSuiteAddSuite(suite, source_test_suite());
  CuSuiteAddSuite(suite, token_test_suite());
  CuSuiteAddSuite(suite, symbol_test_suite());
  CuSuiteAddSuite(suite, lexer_test_suite());
  CuSuiteAddSuite(suite, ifile_test_suite());
  CuSuiteAddSuite(suite, sourcepass_test_suite());
  CuSuiteAddSuite(suite, instable_test_suite());
  CuSuiteAddSuite(suite, options_test_suite());
  CuSuiteAddSuite(suite, operand_test_suite());
  CuSuiteAddSuite(suite, parse_test_suite());
  CuSuiteAddSuite(suite, encoding_test_suite());
  CuSuiteRun(suite);
  CuSuiteSummary(suite, output);
  CuSuiteDetails(suite, output);
  printf("%s\n", output->buffer);
}

#endif /* UNIT_TEST */

