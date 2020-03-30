include(CMakeFindDependencyMacro)

# Capturing values from configure (optional)
#set(my-config-var @my-config-var@)

# Same syntax as find_package
# Specify dependencies explicitly so that projects importing CMakeDemo know what
# they need to find
find_dependency(LAPACK REQUIRED)

# Any extra setup

# Add the targets file to inform projects importing CMakeDemo what targets are
# available to it.
include("${CMAKE_CURRENT_LIST_DIR}/CMakeDemoTargets.cmake")
