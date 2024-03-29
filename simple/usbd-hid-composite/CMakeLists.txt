
cmake_minimum_required(VERSION 3.12)

set(CC  arm-none-eabi-gcc)
set(CXX arm-none-eabi-g++)

include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

project(u2u)

pico_sdk_init()

#add_executable(test test.c)
# 
#target_link_libraries(test pico_stdlib)
# 
#pico_add_extra_outputs(test) # for bin/hex/uf2 outputs

add_executable(dev_hid_composite)

target_sources(dev_hid_composite PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/main.c
        ${CMAKE_CURRENT_LIST_DIR}/usb_descriptors.c
        )

# Make sure TinyUSB can find tusb_config.h
target_include_directories(dev_hid_composite PUBLIC
        ${CMAKE_CURRENT_LIST_DIR})

# In addition to pico_stdlib required for common PicoSDK functionality, add dependency on tinyusb_device
# for TinyUSB device support and tinyusb_board for the additional board support library used by the example
target_link_libraries(dev_hid_composite PUBLIC pico_stdlib tinyusb_device tinyusb_board)

pico_add_extra_outputs(dev_hid_composite)

# add url via pico_set_program_url
#example_auto_set_url(dev_hid_composite)
