include(FetchContent)
FetchContent_Declare(
  lattice
  GIT_REPOSITORY https://github.com/todo-group/lattice.git
  GIT_TAG        master
)
list(APPEND FetchContent_includes "${PROJECT_BINARY_DIR}/_deps/lattice-src")
list(APPEND FetchContents lattice)
