# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(base85_library VERSION 0.0.1 LANGUAGES C)

add_library(base85 SHARED
  "base85.c"
)

set_target_properties(base85 PROPERTIES
  OUTPUT_NAME "base85"
)

target_compile_definitions(base85 PUBLIC DART_SHARED_LIB)
