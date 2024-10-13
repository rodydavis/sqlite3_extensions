# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(pcachetrace_library VERSION 0.0.1 LANGUAGES C)

add_library(pcachetrace SHARED
  "pcachetrace.c"
)

set_target_properties(pcachetrace PROPERTIES
  OUTPUT_NAME "pcachetrace"
)

target_compile_definitions(pcachetrace PUBLIC DART_SHARED_LIB)
