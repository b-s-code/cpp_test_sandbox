#!/bin/bash

if [ -f ./runner ]; then
    ./runner
else
    echo "Test runner executable not found."
fi