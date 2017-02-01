cmake_minimum_required(VERSION 3.7.2)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
project(example VERSION 1.0.0 LANGUAGES CXX)
enable_testing()
add_executable(example ${CMAKE_SOURCE_DIR}/main.cpp)
add_test(NAME synthetic COMMAND example)

