// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
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
  p->source_name = NULL;
  p->print_source = FALSE;
  p->print_intermediate = FALSE;
  p->output_name = NULL;
  p->quiet = FALSE;
  p->max_errors = -1;
  p->report_memory = FALSE;
  p->help = FALSE;

  return p;
}

void delete_options(Options* p) {
  if (p) {
    efree(p->source_name);
    efree(p->output_name);
    efree(p);
  }
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
      else if (strcmp(arg, "-h") == 0 || strcmp(arg, "-?") == 0 || strcmp(arg, "--help") == 0)
        opts->help = TRUE;
      else if (strcmp(arg, "-m") == 0)
        opts->report_memory = TRUE;
      else if (strncmp(arg, "-me=", 4) == 0)
        opts->max_errors = atoi(arg + 4);
      else if (strcmp(arg, "-o") == 0 && i + 1 < argc)
        opts->output_name = estrdup(argv[++i]);
      else if (strcmp(arg, "-q") == 0)
        opts->quiet = TRUE;
      else
        fatal("invalid option: %s\n", arg);
    }
    else if (strcmp(arg, "/?") == 0)
      opts->help = TRUE;
    else if (opts->source_name == NULL)
      opts->source_name = estrdup(arg);
    else
      fatal("unexpected argument: %s\n", arg);
  }
  if (opts->source_name == NULL && !opts->help)
    fatal("source file name expected\n");
}


#ifdef UNIT_TEST

#include "CuTest.h"

static void test_new_options(CuTest* tc) {
  Options* opt;

  opt = new_options();
  CuAssertPtrNotNull(tc, opt);
  CuAssertIntEquals(tc, FALSE, opt->unit_test);
  CuAssertTrue(tc, opt->source_name == NULL);
  CuAssertIntEquals(tc, FALSE, opt->print_source);
  CuAssertIntEquals(tc, FALSE, opt->print_intermediate);
  CuAssertTrue(tc, opt->output_name == NULL);
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
  CuAssertTrue(tc, opt->source_name == NULL);
  CuAssertIntEquals(tc, TRUE, opt->print_source);
  CuAssertIntEquals(tc, FALSE, opt->print_intermediate);
  delete_options(opt);

  opt = new_options();
  process_argv(3, argv_print, opt);
  CuAssertIntEquals(tc, FALSE, opt->unit_test);
  CuAssertPtrNotNull(tc, opt->source_name);
  CuAssertStrEquals(tc, "dangle.asm", opt->source_name);
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
