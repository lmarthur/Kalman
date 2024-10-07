cmake_minimum_required(VERSION 3.20)
project(kalman_test)

# Tau requires at least C11/C++11
set(CMAKE_C_STANDARD 11)

include(FetchContent)
FetchContent_Declare(
    Tau
    URL https://github.com/jasmcaus/tau/archive/dev.zip
)

FetchContent_MakeAvailable(Tau)

find_package(GSL REQUIRED)
link_libraries(GSL::gsl GSL::gslcblas)

enable_testing()

add_executable(${PROJECT_NAME}
    main_test.c
)

target_link_libraries(
    ${PROJECT_NAME}
    Tau
)