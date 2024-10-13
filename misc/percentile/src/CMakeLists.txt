# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(percentile_library VERSION 0.0.1 LANGUAGES C)

add_library(percentile SHARED
  "percentile.c"
)

set_target_properties(percentile PROPERTIES
  OUTPUT_NAME "percentile"
)

target_compile_definitions(percentile PUBLIC DART_SHARED_LIB)
