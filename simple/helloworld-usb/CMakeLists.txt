
cmake_minimum_required(VERSION 3.12)

set(CC  arm-none-eabi-gcc)
set(CXX arm-none-eabi-g++)

include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

project(hellowork_usb)

pico_sdk_init()

add_executable(hello_usb hello_usb.c )

target_link_libraries(hello_usb pico_stdlib)

# enable usb output, disable uart output
pico_enable_stdio_usb(hello_usb 1)
pico_enable_stdio_uart(hello_usb 0)

# create map/bin/hex/uf2 file etc.
pico_add_extra_outputs(hello_usb)

#if (TARGET tinyusb_device)
#  moved to above
#elseif(PICO_ON_DEVICE)
#    message(WARNING "not building hello_usb because TinyUSB submodule is not initialized in the SDK")
#endif()

