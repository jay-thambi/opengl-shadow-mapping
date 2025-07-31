#!/bin/bash

# Start a virtual display
Xvfb :99 -screen 0 1024x768x24 &
export DISPLAY=:99

# Wait a moment for the display to start
sleep 1

# Compile the program
make clean
make

# Run the program
./Tut06

# Clean up
pkill Xvfb 