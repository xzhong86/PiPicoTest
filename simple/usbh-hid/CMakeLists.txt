
cmake_minimum_required(VERSION 3.12)

set(CC  arm-none-eabi-gcc)
set(CXX arm-none-eabi-g++)

include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

set(pname usbh-hid)
project(${pname})

pico_sdk_init()

#add_subdirectory(../../third-part/usb-host-shield)
add_subdirectory(usb-host-shield)

add_compile_definitions(__RP2040__)
include_directories(usb-host-shield)
add_executable(${pname} main.cpp kbd-parser.cpp)

target_link_libraries(${pname} pico_stdlib usb_host_shield tinyusb_board)

# enable usb output, disable uart output
pico_enable_stdio_usb(${pname} 1)
pico_enable_stdio_uart(${pname} 0)

# create map/bin/hex/uf2 file etc.
pico_add_extra_outputs(${pname})

#if (TARGET tinyusb_device)
#  moved to above
#elseif(PICO_ON_DEVICE)
#    message(WARNING "not building hello_usb because TinyUSB submodule is not initialized in the SDK")
#endif()

