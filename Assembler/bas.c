// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
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
#include "timer.h"
#include "token.h"

#ifdef UNIT_TEST
static void RunAllTests(void);
#endif

static char* default_object_name(const char* source);
static void report_memory(Options*);
static void help(void);

int main(int argc, char* argv[]) {
  Options* opts = new_options();

  process_argv(argc, argv, opts);

#ifdef UNIT_TEST
  if (opts->unit_test) {
    opts->report_memory = TRUE;
    RunAllTests();
    report_memory(opts);
    exit(EXIT_SUCCESS); // TODO: return count of failures
  }
#endif

  if (opts->help)
    help();

  init_keywords();

  assert(opts->source_name != NULL);
  SOURCE* src = load_source_file(opts->source_name);
  assert(src != NULL);

  if (opts->print_source) {
    print_source(src);
    delete_source(src);
    report_memory(opts);
    exit(EXIT_SUCCESS);
  }

  IFILE* ifile = new_ifile(src);

  source_pass(ifile, opts);
  if (opts->print_intermediate)
    print_intermediate(ifile, "AFTER SOURCE PASS", PRINT_SOURCE_NAME);

  TIMER timer; // time the passes which involve symbol lookup

  start_timer(&timer);

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

  OFILE* ofile = encoding_pass(ifile, opts);
  if (opts->print_intermediate)
    print_intermediate(ifile, "AFTER ENCODING PASS", PRINT_SIZE);

  stop_timer(&timer);

  if (opts->report_time)
    printf("Microseconds elapsed: %lld\n", elapsed_usec(&timer));

  if (opts->output_name == NULL)
    opts->output_name = default_object_name(opts->source_name);
  save_object_file(ofile, opts->output_name);

  delete_ofile(ofile);
  delete_ifile(ifile);
  delete_source(src);

  report_memory(opts);

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

static void report_memory(Options* opts) {
  BOOL report = opts->report_memory;
  delete_options(opts);
  if (report) {
    unsigned long malloc_count, free_count;
    get_memory_counts(&malloc_count, &free_count);
    printf("malloc: %10lu\n", malloc_count);
    printf("free:   %10lu\n", free_count);
  }
}

static void help(void) {
  puts("Basic Assembler\n");
  puts("Usage: bas [options] file.asm\n");
#ifdef UNIT_TEST
  puts("  -unittest  run unit tests and quit");
#endif
  puts("  -I         print intermediate file");
  puts("  -S         print source");
  puts("  -m         print memory usage");
  puts("  -me=N      max errors");
  puts("  -o name    output to file name");
  puts("  -q         quiet");
  exit(EXIT_SUCCESS);
}

#ifdef UNIT_TEST

#include "CuTest.h"

extern CuSuite* utils_test_suite(void);
extern CuSuite* source_test_suite(void);
extern CuSuite* token_test_suite(void);
extern CuSuite* symbol_test_suite(void);
extern CuSuite* lexer_test_suite(void);
extern CuSuite* ifile_test_suite(void);
extern CuSuite* sourcepass_test_suite(void);
extern CuSuite* instable_test_suite(void);
extern CuSuite* options_test_suite(void);
extern CuSuite* operand_class_test_suite(void);
extern CuSuite* parse_test_suite(void);
extern CuSuite* encoding_test_suite(void);

static void RunAllTests(void) {
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
  CuSuiteAddSuite(suite, operand_class_test_suite());
  CuSuiteAddSuite(suite, parse_test_suite());
  CuSuiteAddSuite(suite, encoding_test_suite());
  CuSuiteRun(suite);
  CuSuiteSummary(suite, output);
  CuSuiteDetails(suite, output);
  printf("%s\n", output->buffer);
}

#endif /* UNIT_TEST */
