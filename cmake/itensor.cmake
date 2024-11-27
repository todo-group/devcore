include(FetchContent)
FetchContent_Declare(
  itensor
  GIT_REPOSITORY https://github.com/wistaria/ITensor.git
  GIT_TAG        cmake
)
list(APPEND FetchContents itensor)
