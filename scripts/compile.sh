# This script compiles the program and test scripts, and runs the tests.
#!/bin/bash
# Compile the program
echo "Compiling the tests..."

# Compile tests with CMake
cmake -S ./test -B test/build -Wno-dev
make -C ./test/build

# Run the tests
echo "Running the library tests..."
./test/build/kalman_test

# Compile the program
echo "Compiling the program..."
gcc -o ./build/kalman ./src/main.c -lgsl 

echo "Program compiled."