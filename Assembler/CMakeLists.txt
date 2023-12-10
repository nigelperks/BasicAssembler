add_executable(bas
  bas.c
  common.c
  encoding.c
  ifile.c
  lexer.c
  operand.c
  options.c
  parse.c
  parsedata.c
  pass1.c
  resize.c
  source.c
  sourcepass.c
  symbol.c
)
if(BASM_UNIT_TESTS)
target_compile_definitions(bas PRIVATE UNIT_TEST)
endif()
target_link_libraries(bas shared)
set_target_properties(bas PROPERTIES C_STANDARD 11)
