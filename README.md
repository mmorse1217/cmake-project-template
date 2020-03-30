# cmake-project-template
A base C++ project built with carefully documented CMakeLists.txt

This project is meant to be a ready-built setup that can be used to build a C++ project with a library, tests and executables that can be installed and exported for other users to import with `find_package(libname)`. To use it, simply fork and add source files to the file lists in `include/`, `src/`, and `tests/`. 

File structure:
```
    ├── CMakeLists.txt
    ├── LICENSE
    ├── README.md
    ├── cmake
    │   └── CMakeDemo-config.cmake
    ├── include
    │   ├── CMakeLists.txt
    │   └── source_file.hpp
    ├── lib
    │   └── libCMakeDemo.a
    ├── src
    │   ├── CMakeLists.txt
    │   └── source_file.cpp
    └── tests
        └── CMakeLists.txt
```

Helpful links:
* [C++Now 2017: Daniel Pfeifer “Effective CMake"](https://youtu.be/bsXLMQ6WgIk)
    (also
    [here](https://github.com/boostcon/cppnow_presentations_2017/blob/master/05-19-2017_friday/effective_cmake__daniel_pfeifer__cppnow_05-19-2017.pdf)
    are the slides themselves)
* [foonathan::blog(): Tutorial: Easily supporting CMake install and find_package()](https://foonathan.net/2016/03/cmake-install/)
* [Effective Modern CMake](https://gist.github.com/mbinna/c61dbb39bca0e4fb7d1f73b0d66a4fd1)
* [CMake Documentation: Exporting and Importing Targets](https://gitlab.kitware.com/cmake/community/-/wikis/doc/tutorials/Exporting-and-Importing-Targets)
