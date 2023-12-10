add_library(shared
  decoder.c
  disassemble.c
  estring.c
  instable.c
  object.c
  opclass.c
  stringlist.c
  token.c
  utils.c
)
if(BASM_UNIT_TESTS)
target_sources(shared PRIVATE CuTest.c)
target_compile_definitions(shared PRIVATE UNIT_TEST)
endif()
set_target_properties(shared PROPERTIES C_STANDARD 11)
