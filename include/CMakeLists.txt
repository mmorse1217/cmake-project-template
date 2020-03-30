
# Make an explicit list of all source files in CMakeDemo_INC. This is important
# because CMake is not a build system: it is a build system generator. Suppose
# you add a file foo.cpp to src/ after running cmake .. . If you set
# CMakeDemo_INC with `file(GLOB ... )`, this is not passed to the makefile; it
# doesn't know that foo.cpp exists and will not re-run cmake. Your
# collaborator's builds will fail and it will be unclear why. Whether you use
# file(GLOB ...) or not, you will need to re-run cmake, but with an explicit
# file list, you know beforehand why your code isn't compiling. 
set(CMakeDemo_INC
    source_file.hpp
    )

# Form the full path to the source files...
PREPEND(CMakeDemo_INC)
# ... and pass the variable to the parent scope.
set(CMakeDemo_INC ${CMakeDemo_INC}  PARENT_SCOPE)
