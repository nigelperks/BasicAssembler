// Basic Assembler
// Copyright (c) 2022-24 Nigel Perks
// Basic Assembler and Linker driver

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "options.h"
#include "utils.h"

OPTIONS* new_options(void) {
  OPTIONS* opt = ecalloc(sizeof *opt);
  opt->sources = new_stringlist();
  return opt;
}

void delete_options(OPTIONS* opt) {
  if (opt) {
    efree(opt->program_dir);
    delete_stringlist(opt->sources);
    efree(opt);
  }
}

static void usage(void) {
  puts("Basic Assembler and Linker\n");
  puts("Usage: basl [options] file ...\n");
  puts("  -?         help");
  puts("  -h         help");
  puts("  -m         print memory usage");
  puts("  -me=N      max assembly errors");
  puts("  -o name    output to file name");
  puts("  -s         assemble only");
#ifdef UNIT_TEST
  puts("  -unittest  run unit tests and quit");
#endif
  puts("  -v         verbose");
  putchar('\n');
  puts("  --case-sensitive");
  exit(EXIT_SUCCESS);
}

static char* file_dir(const char* path);

OPTIONS* process_argv(int argc, char* argv[]) {
  OPTIONS* opt = new_options();
  opt->program_dir = file_dir(argv[0]);
  int i;
  for (i = 1; i < argc; i++) {
    const char* const arg = argv[i];
#ifdef UNIT_TEST
    if (strcmp(arg, "-unittest") == 0) {
      opt->unit_test = true;
      return opt;
    }
#endif
    if (arg[0] == '-') {
      if (strcmp(arg, "-?") == 0 || strcmp(arg, "-h") == 0 || strcmp(arg, "--help") == 0)
        usage();
      else if (arg[1] == '-') {
        if (strcmp(arg+2, "case-sensitive") == 0)
          opt->case_sensitive = true;
        else if (strcmp(arg+2, "case-insensitive") == 0)
          opt->case_sensitive = false;
        else
          fatal("unknown option: %s\n", arg);
      }
      else if (arg[1] == 'f') {
        if (arg[2])
          opt->format = arg + 2;
        else if (++i < argc)
          opt->format = argv[i];
        else
          fatal("-f: output format missing\n");
      }
      else if (strncmp(arg, "-me=", 4) == 0) {
        opt->max_errors = atoi(arg + 4);
        opt->max_errors_set = true;
      }
      else if (strcmp(arg, "-o") == 0 && i + 1 < argc) {
        efree(opt->output_name);
        opt->output_name = argv[++i];
      }
      else if (strcmp(arg, "-p") == 0) {
        if (++i < argc)
          opt->mapfile = argv[i];
        else
          fatal("map file name missing\n");
      }
      else for (unsigned j = 1; arg[j]; j++) {
        switch (arg[j]) {
          case 'm': opt->report_memory = true; break;
          case 's': opt->assemble_only = true; break;
          case 'v': opt->verbose++; break;
          default: fatal("invalid option: %s\n", arg); break;
        }
      }
    }
    else if (strcmp(arg, "/?") == 0)
      usage();
    else
      append_string(opt->sources, arg);
  }
  if (stringlist_count(opt->sources) == 0)
    fatal("source file name expected\n");
  if (opt->assemble_only && opt->output_name && stringlist_count(opt->sources) > 1)
    fatal("attempt to assemble multiple source files to one object file\n");
  return opt;
}

static char* file_dir(const char* path) {
  assert(path != NULL);
  char* t = estrdup(path);
  char* name = t;
  for (char* p = t; *p; p++) {
    if (*p == '\\' || *p == '/')
      name = p + 1;
  }
  *name = '\0';
  return t;
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_file_dir(CuTest* tc) {
  char* t;

  t = file_dir("");
  CuAssertStrEquals(tc, "", t);
  efree(t);

  t = file_dir("abc");
  CuAssertStrEquals(tc, "", t);
  efree(t);

  t = file_dir("abc\\");
  CuAssertStrEquals(tc, "abc\\", t);
  efree(t);

  t = file_dir("C:\\BASM");
  CuAssertStrEquals(tc, "C:\\", t);
  efree(t);

  t = file_dir("x64/debug/basl");
  CuAssertStrEquals(tc, "x64/debug/", t);
  efree(t);
}

CuSuite* options_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_file_dir);
  return suite;
}

#endif // UNIT_TEST
