cmake_minimum_required(VERSION 3.15)
include(cmake/prefix.cmake)
project(devcore Fortran C CXX)
include(cmake/postfix.cmake)

if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
  include(pythonvenv)
  include(catch2)
  include(eigen3)
  include(googletest)
  include(pybind11)
  include(standards)
  include(lattice)
  include(bcl)
  include(pyalea)
  FetchContent_MakeAvailable(${FetchContents})
endif()

add_subdirectory(example)
