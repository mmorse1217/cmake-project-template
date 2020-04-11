cmake_minimum_required(VERSION 3.1)
set(CMAKE_CXX_STANDARD 11)

# Explicitly list the test source code and headers. The Catch header-only unit
# test framework is stored in with the test source.
set(CMakeDemo_TEST_SRC
    test_cmake_demo.cpp
)
set(CMakeDemo_TEST_HEADER
    catch.hpp
)

PREPEND(CMakeDemo_TEST_SRC)

# Make an executable target that depends on the test source code we specified
# above.
add_executable(TestCMakeDemo ${CMakeDemo_TEST_SRC} ${CMakeDemo_TEST_HEADER})

# Enable testing via CTest
enable_testing()
# Add our test as runnable via CTest
add_test(NAME TestCMakeDemo  COMMAND TestCMakeDemo)

# Link our unit tests against the library we compiled
target_link_libraries(TestCMakeDemo CMakeDemo)
