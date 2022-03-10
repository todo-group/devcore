include(FetchContent)
FetchContent_Declare(
  bcl
  GIT_REPOSITORY https://github.com/cmsi/bcl.git
  GIT_TAG        master
)
list(APPEND FetchContents bcl)
