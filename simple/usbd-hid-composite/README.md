# My HID test program
Base on rp pico.

This is a copy of the hid_composite example from TinyUSB (https://github.com/hathach/tinyusb/tree/master/examples/device/hid_composite)
showing how to build with TinyUSB when using the Raspberry Pi Pico SDK

`picotool load xxx.uf2` to load program.

To check usb HID device: `ls /dev/input/by-id`, you can find which event(/dev/input/eventN) is our device.

To check raw input event: `evtest /dev/input/eventNN`.

