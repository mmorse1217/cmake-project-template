# CMake C++ Project Template ![build](https://github.com/mmorse1217/cmake-project-template/workflows/build/badge.svg)


A base C++ project built with documented CMakeLists.txt


This project is meant to be a ready-built setup that can be used to build a C++ project with a library, tests and executables that can be installed and exported for other users to import with `find_package(CMakeDemo)`. 
There is a simple version of a find module in `cmake` for the project, `FindCMakeDemo.cmake`, that searches several environment variables and `/usr/local` for installations of `CMakeDemo`. 
There is also a baseline `CMakeDemo-config.cmake` file to support transitive dependencies when the project is found via `find_package`.
To use it, simply fork, add source files to the file lists in `include/`, `src/`, and `tests/`, and replace `CMakeDemo` with the name of your project throughout the `CMakeLists.txt` files.

To compile the project:
```
    mkdir build
    cd build
    cmake ..
    make
```
To install the project in `/usr/local/`:
```
    make install
```
To run unit tests via CTest, run:
```
    make test
```
or 
```
    ctest
```

To add additional dependencies via `find_package`, be sure to also include them in `cmake/CMakeDemo-config.cmake`. 
`LAPACK` is included as an example.

File structure:
```
    ├── CMakeLists.txt
    ├── LICENSE
    ├── README.md
    ├── cmake
    │   ├── CMakeDemo-config.cmake
    │   └── FindCMakeDemo.cmake
    ├── include
    │   ├── CMakeLists.txt
    │   └── source_file.hpp
    ├── src
    │   ├── CMakeLists.txt
    │   └── source_file.cpp
    └── tests
        ├── CMakeLists.txt
        ├── catch.hpp
        └── test_cmake_demo.cpp
```

Helpful links:
* [C++Now 2017: Daniel Pfeifer “Effective CMake"](https://youtu.be/bsXLMQ6WgIk)
    (also
    [here](https://github.com/boostcon/cppnow_presentations_2017/blob/master/05-19-2017_friday/effective_cmake__daniel_pfeifer__cppnow_05-19-2017.pdf)
    are the slides themselves)
* [foonathan::blog(): Tutorial: Easily supporting CMake install and find_package()](https://foonathan.net/2016/03/cmake-install/)
* [Effective Modern CMake](https://gist.github.com/mbinna/c61dbb39bca0e4fb7d1f73b0d66a4fd1)
* [CMake Documentation: Exporting and Importing Targets](https://gitlab.kitware.com/cmake/community/-/wikis/doc/tutorials/Exporting-and-Importing-Targets)
* [An Introduction to Modern CMake](https://cliutils.gitlab.io/modern-cmake/)
