include(FetchContent)
FetchContent_Declare(
  pyalea
  GIT_REPOSITORY https://github.com/todo-group/pyalea.git
  GIT_TAG        main
)
list(APPEND FetchContents pyalea)
