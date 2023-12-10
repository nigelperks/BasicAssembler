cmake_minimum_required(VERSION 3.20.0)
project(BasicAssembler DESCRIPTION "Basic Assembler Toolkit" VERSION 0.2.0)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG
    ${CMAKE_CURRENT_BINARY_DIR}/Debug/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE
    ${CMAKE_CURRENT_BINARY_DIR}/Release/bin)
include_directories("${PROJECT_SOURCE_DIR}/Shared")
if(MSVC)
  add_compile_options(
    $<$<CONFIG:>:/MT>
    $<$<CONFIG:Debug>:/MTd>
    $<$<CONFIG:Release>:/MT>
  )
endif()
set(BASM_UNIT_TESTS ON)
add_subdirectory(Shared)
add_subdirectory(Assembler)
add_subdirectory(Disassembler)
add_subdirectory(Driver)
add_subdirectory(ExeTool)
add_subdirectory(Linker)
add_subdirectory(ObjectTool)

install(TARGETS bas bdis basl exetool blink bob
        DESTINATION bin
        COMPONENT tools)
install(FILES README.md LICENSE
        DESTINATION doc
        COMPONENT documentation)

enable_testing()
add_test(NAME AssemblerUnitTests COMMAND bas "-unittest")
add_test(NAME DisassemblerUnitTests COMMAND bdis "-unittest")
add_test(NAME DriverUnitTests COMMAND basl "-unittest")
add_test(NAME LinkerUnitTests COMMAND blink "-unittest")
