include(FetchContent)
FetchContent_Declare(
  bcl
  GIT_REPOSITORY https://github.com/cmsi/bcl.git
  GIT_TAG        master
)
list(APPEND FetchContent_includes "${PROJECT_BINARY_DIR}/_deps/bcl-src")
list(APPEND FetchContents bcl)
