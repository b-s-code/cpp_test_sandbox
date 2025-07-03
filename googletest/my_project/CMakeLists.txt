########################################################
# Declaration of dependency on googletest.
########################################################
cmake_minimum_required(VERSION 3.14)
project(my_project)

# GoogleTest requires at least C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Specify that googletest be downloaded from github.com, at a specific commit hash.
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)
########################################################
# End declaration of dependency on googletest.
########################################################

########################################################
# Config for creating, running a googletest binary.
########################################################
# Enables testing in CMake.  AFAICT, this is nothing to
# do with googletest specifically.  It is also relevant
# for other testing frameworks.
enable_testing()

# States that we want the hello_test binary to be built
# by compiling the listed source file.
add_executable(
  hello_test
  hello_test.cc
)
# States that we want the hello_test binary to be linked
# to GoogleTest.
target_link_libraries(
  hello_test
  GTest::gtest_main
)

# These statements just enable CMakes test runner (ctest)
# to discover the tests included in the hello_test binary.
include(GoogleTest)
gtest_discover_tests(hello_test)
########################################################
# End config for creating, running a googletest binary.
########################################################

