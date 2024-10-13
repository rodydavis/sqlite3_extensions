# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(memstat_library VERSION 0.0.1 LANGUAGES C)

add_library(memstat SHARED
  "memstat.c"
)

set_target_properties(memstat PROPERTIES
  OUTPUT_NAME "memstat"
)

target_compile_definitions(memstat PUBLIC DART_SHARED_LIB)
