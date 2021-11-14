// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// bas options.

#include <stdlib.h>
#include <string.h>
#include "options.h"
#include "utils.h"

Options* new_options(void) {
  Options* p = emalloc(sizeof *p);

#ifdef UNIT_TEST
  p->unit_test = FALSE;
#endif
  p->source = NULL;
  p->print_source = FALSE;
  p->print_intermediate = FALSE;
  p->output = NULL;
  p->quiet = FALSE;
  p->max_errors = -1;

  return p;
}

void delete_options(Options* p) {
  free(p);
}

void process_argv(int argc, char* argv[], Options* opts) {
  int i;
  for (i = 1; i < argc; i++) {
    const char* const arg = argv[i];
#ifdef UNIT_TEST
    if (strcmp(arg, "-unittest") == 0) {
      opts->unit_test = TRUE;
      return;
    }
#endif
    if (arg[0] == '-') {
      if (strcmp(arg, "-I") == 0)
        opts->print_intermediate = TRUE;
      else if (strcmp(arg, "-S") == 0)
        opts->print_source = TRUE;
      else if (strncmp(arg, "-me=", 4) == 0)
        opts->max_errors = atoi(arg + 4);
      else if (strcmp(arg, "-o") == 0 && i + 1 < argc)
        opts->output = argv[++i];
      else if (strcmp(arg, "-q") == 0)
        opts->quiet = TRUE;
      else
        fatal("invalid option: %s\n", arg);
    }
    else if (opts->source == NULL)
      opts->source = arg;
    else
      fatal("unexpected argument: %s\n", arg);
  }
  if (opts->source == NULL)
    fatal("source file name expected\n");
}


#ifdef UNIT_TEST

#include "cutest.h"

static void test_new_options(CuTest* tc) {
  Options* opt;

  opt = new_options();
  CuAssertPtrNotNull(tc, opt);
  CuAssertIntEquals(tc, FALSE, opt->unit_test);
  CuAssertTrue(tc, opt->source == NULL);
  CuAssertIntEquals(tc, FALSE, opt->print_source);
  CuAssertIntEquals(tc, FALSE, opt->print_intermediate);
  CuAssertTrue(tc, opt->output == NULL);
  CuAssertIntEquals(tc, FALSE, opt->quiet);

  delete_options(opt);
}

static void test_process_argv(CuTest* tc) {
  Options* opt = NULL;

  char* argv_unittest[] = { "prog", "-S", "-unittest", "-I", NULL };

  char* argv_print[] = { "prog", "-I", "dangle.asm", NULL };

  opt = new_options();
  process_argv(4, argv_unittest, opt);
  CuAssertIntEquals(tc, TRUE, opt->unit_test);
  CuAssertTrue(tc, opt->source == NULL);
  CuAssertIntEquals(tc, TRUE, opt->print_source);
  CuAssertIntEquals(tc, FALSE, opt->print_intermediate);
  delete_options(opt);

  opt = new_options();
  process_argv(3, argv_print, opt);
  CuAssertIntEquals(tc, FALSE, opt->unit_test);
  CuAssertPtrNotNull(tc, opt->source);
  CuAssertStrEquals(tc, "dangle.asm", opt->source);
  CuAssertIntEquals(tc, FALSE, opt->print_source);
  CuAssertIntEquals(tc, TRUE, opt->print_intermediate);
  delete_options(opt);
}

CuSuite* options_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_options);
  SUITE_ADD_TEST(suite, test_process_argv);
  return suite;
}

#endif // UNIT_TEST
