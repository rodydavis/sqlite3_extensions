# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(sqlite3_stdio_library VERSION 0.0.1 LANGUAGES C)

add_library(sqlite3_stdio SHARED
  "sqlite3_stdio.c"
)

set_target_properties(sqlite3_stdio PROPERTIES
  OUTPUT_NAME "sqlite3_stdio"
)

target_compile_definitions(sqlite3_stdio PUBLIC DART_SHARED_LIB)
