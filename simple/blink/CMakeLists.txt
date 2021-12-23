cmake_minimum_required(VERSION 3.12)


set(CC  arm-none-eabi-gcc)
set(CXX arm-none-eabi-g++)

include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

project(u2u)

pico_sdk_init()

add_executable(test test.c)

target_link_libraries(test pico_stdlib)

pico_add_extra_outputs(test) # for bin/hex/uf2 outputs

