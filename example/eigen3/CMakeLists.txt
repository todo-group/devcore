add_executable (eigen3 eigen3.cpp)
target_link_libraries(eigen3 Eigen3::Eigen)
add_test(eigen3 eigen3)
