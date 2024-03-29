find_package (Python COMPONENTS Interpreter Development)
execute_process(COMMAND ${Python_EXECUTABLE} -m venv ${CMAKE_BINARY_DIR}/venv)
set(ENV{VIRTUAL_ENV} ${CMAKE_BINARY_DIR}/venv)
set(Python_FIND_VIRTUALENV FIRST)
unset(Python_EXECUTABLE)
find_package (Python COMPONENTS Interpreter Development)
if(EXISTS ${CMAKE_SOURCE_DIR}/requirements.txt)
  execute_process(COMMAND ${Python_EXECUTABLE} -m pip install -r ${CMAKE_SOURCE_DIR}/requirements.txt)
endif(EXISTS ${CMAKE_SOURCE_DIR}/requirements.txt)
