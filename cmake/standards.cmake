include(FetchContent)
FetchContent_Declare(
  standards
  GIT_REPOSITORY https://github.com/todo-group/standards.git
  GIT_TAG        master
)
list(APPEND FetchContent_includes "${PROJECT_BINARY_DIR}/_deps/standards-src")
list(APPEND FetchContents standards)
