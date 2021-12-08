option(LATTICE_INSTALL OFF)
option(LATTICE_BUILD_TESTS OFF)
option(LATTICE_BUILD_EXAMPLES OFF)

include(FetchContent)
FetchContent_Declare(
  lattice
  GIT_REPOSITORY https://github.com/todo-group/lattice.git
)
include_directories(${lattice_SOURCE_DIR})
list(APPEND FetchContents lattice)
