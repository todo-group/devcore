add_executable(one one.cc)
target_link_libraries(one ITensor::ITensor)
add_test(one one)
