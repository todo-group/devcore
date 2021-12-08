cmake_minimum_required(VERSION 3.14)
include(cmake/prefix.cmake)
project(devcore Fortran C CXX)
include(cmake/postfix.cmake)

option(DEVCORE_INSTALL "Install devcore." ON)
option(DEVCORE_BUILD_TESTS "Build all devcore tests." ON)
option(DEVCORE_BUILD_EXAMPLES "Build all devcore examples." ON)

include_directories(${PROJECT_SOURCE_DIR})

include(eigen3)
include(googletest)
include(pybind11)
include(standards)
include(lattice)
include(bcl)

FetchContent_MakeAvailable(${FetchContents})
