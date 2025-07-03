#!/bin/bash

# Generates C++ code (specifically, the file runner.cpp) from the headers listed.
# Note that the resulting cpp file also #includes the headers listed.
python3 ./cxxtest/bin/cxxtestgen --error-printer -o runner.cpp MyTestSuite1.h MyTestSuite2.h

# Generate test runner executable.  This is done by compiling the previously
# generated cpp file.
CXXTEST=cxxtest # Used to tell compiled where to find cxxtest's headers.
g++ -o runner ./runner.cpp -I$CXXTEST

# Execute the test runner.
# Note that if you want to see output related to TS_TRACE statements, then you
# need to pass the -v option to runner.  Also, to see available tests, and test
# suites, pass --help-tests.  Passing -h shows CLI info.
./runner
