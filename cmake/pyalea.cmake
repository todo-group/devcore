include(FetchContent)
FetchContent_Declare(
  pyalea
  GIT_REPOSITORY https://github.com/todo-group/pyalea.git
  GIT_TAG        main
)
list(APPEND FetchContent_includes "${PROJECT_BINARY_DIR}/_deps/pyalea-src")
list(APPEND FetchContents pyalea)
