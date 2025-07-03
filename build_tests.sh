#!/bin/bash

# Generates C++ code (specifically, the file runner.cpp) from the headers listed.
python3 ./cxxtest/bin/cxxtestgen --error-printer -o runner.cpp MyTestSuite1.h

# Generate test runner executable.
CXXTEST=cxxtest # Used to tell compiled where to find cxxtest's headers.
g++ -o runner ./runner.cpp -I$CXXTEST