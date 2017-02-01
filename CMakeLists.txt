cmake_minimum_required(VERSION 3.7.2)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
project(example VERSION 1.0.0 LANGUAGES CXX)
enable_testing()
add_executable(example ${CMAKE_SOURCE_DIR}/main.cpp)
set_target_properties(
  example PROPERTIES
  COMPILE_FLAGS "-fprofile-instr-generate -fcoverage-mapping"
  LINK_FLAGS "-fprofile-instr-generate -fcoverage-mapping"
)
add_test(NAME synthetic COMMAND example)
add_custom_target(
  run-tests
  ${CMAKE_COMMAND} -E env CTEST_OUTPUT_ON_FAILURE=1 ${CMAKE_CTEST_COMMAND}
    -C $<CONFIG>
  COMMAND llvm-profdata merge -sparse default.profraw -o coverage.profdata
  COMMAND llvm-cov show example -instr-profile=coverage.profdata >
    app.coverage.txt
  WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)
