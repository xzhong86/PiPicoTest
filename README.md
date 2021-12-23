
# Pi Pico U2U Test

  A test project for USB2USB keyboard mapper on pi-pico.


## Code and CMake

 - test code refer to github:pico-example/blink/blink.c
 - CMake file refer to github:pico-example/CMakeLists.txt


## Download UF2

```sh
sudo mkdir -p /mnt/pico

# mount pico u-disk. (press reset when power on)
sudo mount /dev/sda1 /mnt/pico

# check if it is pico u-disk or not
ls /mnt/pico/

# copy to flash
sudo cp blink.uf2 /mnt/pico
sudo sync
```

## Reference

 - [Getting started with Pi Pico](https://datasheets.raspberrypi.com/pico/getting-started-with-pico.pdf)
 - [Pi Pico c/c++ SDK](https://datasheets.raspberrypi.com/pico/raspberry-pi-pico-c-sdk.pdf)

