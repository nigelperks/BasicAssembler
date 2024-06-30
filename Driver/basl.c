// Basic Assembler
// Copyright (c) 2022 Nigel Perks
// Basic Assembler and Linker driver

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "options.h"
#include "estring.h"
#include "utils.h"

#ifdef UNIT_TEST
void RunAllTests(void);
#endif

static void report_memory(OPTIONS*);

static STRINGLIST* obtain_objects(const OPTIONS*);
static void link(const OPTIONS*, const STRINGLIST* objects);

int main(int argc, char* argv[]) {
  OPTIONS* opt = process_argv(argc, argv);

#ifdef UNIT_TEST
  if (opt->unit_test) {
    opt->report_memory = true;
    RunAllTests();
    report_memory(opt);
    exit(EXIT_SUCCESS); // TODO: return count of failures
  }
#endif

  STRINGLIST* objects = obtain_objects(opt);
  link(opt, objects);
  delete_stringlist(objects);

  report_memory(opt);
  return 0;
}

static void report_memory(OPTIONS* opt) {
  bool report = opt->report_memory;
  delete_options(opt);
  if (report) {
    unsigned long malloc_count, free_count;
    get_memory_counts(&malloc_count, &free_count);
    printf("malloc: %10lu\n", malloc_count);
    printf("free:   %10lu\n", free_count);
  }
}

static bool asm_file(const char* name);
static bool obj_file(const char* name);
static char* obj_name(const char* name);
static char* assemble(const OPTIONS*, const char* name);

static STRINGLIST* obtain_objects(const OPTIONS* opt) {
  STRINGLIST* objects = new_stringlist();
  for (unsigned i = 0; i < stringlist_count(opt->sources); i++) {
    const char* s = stringlist_item(opt->sources, i);
    if (asm_file(s))
      append_string_pointer(objects, assemble(opt, s));
    else if (obj_file(s))
      append_string(objects, s);
    else
      fatal("unexpected file type: %s\n", s);
  }
  return objects;
}

/*
  char* program_dir;
  STRINGLIST* sources;
  bool assemble_only;
  unsigned max_errors;
  char* output_name;
  const char* format;
  const char* mapfile;
  bool report_memory;
  bool verbose;
*/
static char* assemble(const OPTIONS* opt, const char* name) {
  ESTRING str;
  char* obj = NULL;
  init_estring(&str, 128);

  extend_string(&str, opt->program_dir);
  extend_string(&str, "bas ");

  extend_string(&str, name);

  if (opt->assemble_only && opt->output_name) {
    extend_string(&str, " -o ");
    extend_string(&str, opt->output_name);
    obj = estrdup(opt->output_name);
  }
  else
    obj = obj_name(name);

  if (opt->max_errors_set) {
    char buf[32];
    sprintf(buf, "%lu", (unsigned long) opt->max_errors);
    extend_string(&str, " -me=");
    extend_string(&str, buf);
  }

  if (opt->verbose) {
    puts(estring_text(&str));
    if (opt->verbose >= 2)
      extend_string(&str, " -v");
  }

  int r = system(estring_text(&str));
  if (opt->verbose)
    printf("Exit code: %d\n", r);
  if (r)
    exit(EXIT_FAILURE);

  deinit_estring(&str);
  return obj;
}

static void link(const OPTIONS* opt, const STRINGLIST* objects) {
  ESTRING str;
  init_estring(&str, 128);

  extend_string(&str, opt->program_dir);
  extend_string(&str, "blink");

  for (unsigned i = 0; i < stringlist_count(objects); i++) {
    extend_string(&str, " ");
    extend_string(&str, stringlist_item(objects, i));
  }

  if (opt->output_name) {
    extend_string(&str, " -o ");
    extend_string(&str, opt->output_name);
  }

  if (opt->format) {
    extend_string(&str, " -f");
    extend_string(&str, opt->format);
  }

  if (opt->mapfile) {
    extend_string(&str, " -p ");
    extend_string(&str, opt->mapfile);
  }

  if (opt->verbose) {
    puts(estring_text(&str));
    if (opt->verbose >= 2)
      extend_string(&str, " -v");
  }

  int r = system(estring_text(&str));
  if (opt->verbose)
    printf("Exit code: %d\n", r);
  if (r)
    exit(EXIT_FAILURE);

  deinit_estring(&str);
}

static bool file_type(const char* name, const char* ext3, const char* ext1) {
  assert(name != NULL);
  const size_t len = strlen(name);
  if (len >= 4 && _stricmp(name + len - 4, ext3) == 0)
    return true;
  if (len >= 2 && _stricmp(name + len - 2, ext1) == 0)
    return true;
  return false;
}

static bool asm_file(const char* name) {
  return file_type(name, ".asm", ".s");
}

static bool obj_file(const char* name) {
  return file_type(name, ".obj", ".o");
}

// On entry: asm_file(name) is true
static char* obj_name(const char* name) {
  assert(asm_file(name));
  char* t = estrdup(name);
  const size_t len = strlen(name);
  if (name[len-2] == '.')
    t[len-1] = 'o';
  else
    strcpy(t + len - 3, "obj");
  return t;
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_asm_file(CuTest* tc) {
  CuAssertIntEquals(tc, false, asm_file(""));
  CuAssertIntEquals(tc, false, asm_file("asm"));
  CuAssertIntEquals(tc, true, asm_file(".asm"));
  CuAssertIntEquals(tc, true, asm_file(".s"));
  CuAssertIntEquals(tc, true, asm_file("fred.asm"));
  CuAssertIntEquals(tc, true, asm_file("fred/sally/bill.s"));
  CuAssertIntEquals(tc, true, asm_file("FRED.ASM"));
  CuAssertIntEquals(tc, true, asm_file("FRED.aSm"));
  CuAssertIntEquals(tc, true, asm_file("FRED.S"));
  CuAssertIntEquals(tc, false, asm_file(".asm1"));
  CuAssertIntEquals(tc, false, asm_file(".s1"));
  CuAssertIntEquals(tc, false, asm_file(".basm"));
  CuAssertIntEquals(tc, false, asm_file(".as"));
}

static void test_obj_file(CuTest* tc) {
  CuAssertIntEquals(tc, false, obj_file(""));
  CuAssertIntEquals(tc, false, obj_file("obj"));
  CuAssertIntEquals(tc, true, obj_file(".obj"));
  CuAssertIntEquals(tc, true, obj_file(".o"));
  CuAssertIntEquals(tc, true, obj_file("C:\\WORK\\THING.OBJ"));
  CuAssertIntEquals(tc, true, obj_file("fred/sally/bill.o"));
  CuAssertIntEquals(tc, false, obj_file("billy.so"));
}

static void test_obj_name(CuTest* tc) {
  char* n;

  n = obj_name(".asm");
  CuAssertPtrNotNull(tc, n);
  CuAssertStrEquals(tc, ".obj", n);
  efree(n);

  n = obj_name(".s");
  CuAssertPtrNotNull(tc, n);
  CuAssertStrEquals(tc, ".o", n);
  efree(n);

  n = obj_name("x.asm");
  CuAssertPtrNotNull(tc, n);
  CuAssertStrEquals(tc, "x.obj", n);
  efree(n);

  n = obj_name("x.s");
  CuAssertPtrNotNull(tc, n);
  CuAssertStrEquals(tc, "x.o", n);
  efree(n);
  
  n = obj_name("c:\\work\\thing.asm");
  CuAssertPtrNotNull(tc, n);
  CuAssertStrEquals(tc, "c:\\work\\thing.obj", n);
  efree(n);
}

CuSuite* basl_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_asm_file);
  SUITE_ADD_TEST(suite, test_obj_file);
  SUITE_ADD_TEST(suite, test_obj_name);
  return suite;
}

extern CuSuite* estring_test_suite(void);
extern CuSuite* options_test_suite(void);

void RunAllTests(void) {
  CuString *output = CuStringNew();
  CuSuite* suite = CuSuiteNew();

  CuSuiteAddSuite(suite, estring_test_suite());
  CuSuiteAddSuite(suite, options_test_suite());
  CuSuiteAddSuite(suite, basl_test_suite());

  CuSuiteRun(suite);
  CuSuiteSummary(suite, output);
  CuSuiteDetails(suite, output);
  printf("%s\n", output->buffer);
}

#endif /* UNIT_TEST */
