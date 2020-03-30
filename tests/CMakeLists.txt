cmake_minimum_required(VERSION 3.1)
set(CMAKE_CXX_STANDARD 11)


set(CMakeDemo_TEST_SRC
    TestCMakeDemo.hpp
)
set(CMakeDemo_TEST_HEADER
    TestCMakeDemo.hpp
)

add_executable(TestCMakeDemo TestCMakeDemo.cpp ${CMakeDemo_TEST_SRC})

target_link_libraries(TestCMakeDemo CMakeDemo)
