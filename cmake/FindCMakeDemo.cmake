# - Try to find the CMakeDemo library
# Once done this will define
#
#  CMakeDemo_FOUND - system has CMakeDemo
#  CMakeDemo_INCLUDE_DIR - CMakeDemo include directory
#  CMakeDemo_LIB - CMakeDemo library directory
#  CMakeDemo_LIBRARIES - CMakeDemo libraries to link

if(CMakeDemo_FOUND)
    return()
endif()

# We favor libraries installed in /usr/local with the prefix .../CMakeDemo-*, so
# we make a list of 
file(GLOB lib_glob "/usr/local/lib/CMakeDemo-*")
file(GLOB inc_glob "/usr/local/include/CMakeDemo-*")

find_library(CMakeDemo_LIB 
    NAMES CMakeDemo
    HINTS
        ${CMakeDemo_DIR}
        ${CMAKEDEMO_DIR}
        $ENV{CMakeDemo_DIR}
        $ENV{CMAKEDEMO_DIR}
        ENV CMAKEDEMO_DIR
    PATHS
        /usr
        /usr/local
        /usr/local/lib
        ${lib_glob}
    PATH_SUFFIXES 
        lib
)
find_path(CMakeDemo_INCLUDE_DIR source_file.hpp
    HINTS
        ${CMakeDemo_DIR}
        ${CMAKEDEMO_DIR}
        $ENV{CMakeDemo_DIR}
        $ENV{CMAKEDEMO_DIR}
        ENV CMAKEDEMO_DIR
    PATHS
        /usr
        /usr/local
        /usr/local/include
        ${inc_glob}
    PATH_SUFFIXES 
        include
)


include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(CMakeDemo
    "\nCMakeDemo not found --- You can download it using:\n\tgit clone 
    https://github.com/mmorse1217/cmake-project-template\n and setting the CMAKEDEMO_DIR environment variable accordingly"
    CMakeDemo_LIB CMakeDemo_INCLUDE_DIR)
mark_as_advanced(CMakeDemo_INCLUDE_DIR CMakeDemo_LIB)

set(CMakeDemo_INCLUDE_DIRS ${CMakeDemo_INCLUDE_DIR})
set(CMakeDemo_LIBRARIES ${CMakeDemo_LIB})
#set(CMakeDemo_LIBRARIES "${CMakeDemo_LIB}/../lib/libblendsurf.a"  )
#set(CMakeDemo_render_LIBRARIES "${CMakeDemo_LIB}/../lib/libblendsurf_render.a"  )
#set(CMakeDemo_render_INCLUDE_DIR "${CMakeDemo_LIB}/../vis/"  )

if(CMakeDemo_FOUND AND NOT TARGET CMakeDemo::CMakeDemo)
    add_library(CMakeDemo::CMakeDemo UNKNOWN IMPORTED)
    # Interface include directory
    set_target_properties(CMakeDemo::CMakeDemo PROPERTIES
        INTERFACE_INCLUDE_DIRECTORIES "${CMakeDemo_INCLUDE_DIRS}"
        )

    # Link to library file
    set_target_properties(CMakeDemo::CMakeDemo PROPERTIES
        IMPORTED_LINK_INTERFACE_LANGUAGES "CXX"
        IMPORTED_LOCATION "${CMakeDemo_LIBRARIES}"
        )
endif()
