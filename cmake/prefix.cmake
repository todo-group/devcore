if(NOT DEVCORE_PREFIX_CMAKE_INCLUDED)
  message(STATUS "CMAKE version ${CMAKE_VERSION}")

  set(CMAKE_DISABLE_SOURCE_CHANGES ON)
  set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)

  if(CONFIG)
    message(STATUS "Loading compiler configration: " ${CONFIG})
    include(cmake/config-${CONFIG}.cmake)
  else(CONFIG)
    if(NOT CMAKE_C_COMPILER)
      set(CMAKE_C_COMPILER "gcc" CACHE STRING "" FORCE)
    endif(NOT CMAKE_C_COMPILER)
    if(NOT CMAKE_CXX_COMPILER)
      set(CMAKE_CXX_COMPILER "g++" CACHE STRING "" FORCE)
    endif(NOT CMAKE_CXX_COMPILER)
    if(NOT CMAKE_Fortran_COMPILER)
      set(CMAKE_Fortran_COMPILER "gfortran" CACHE STRING "" FORCE)
    endif(NOT CMAKE_Fortran_COMPILER)
  endif(CONFIG)
  set(DEVCORE_PREFIX_CMAKE_INCLUDED TRUE)
endif(NOT DEVCORE_PREFIX_CMAKE_INCLUDED)
