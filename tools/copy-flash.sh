#!/bin/sh

uf2=$1
[ -n "$uf2" ] || echo "need uf2 file" && exit 1
[ -f $uf2 ] || echo "$uf2 not exist." && exit 1

dev=/dev/sda1
mnt=/mnt/pico

mkdir -p $mnt
[ -e $dev ] || echo "$dev not exist." && exit 1

echo "mount $dev $mnt"
mount $dev $mnt || exit 1

if [ -f $mnt/INFO_UF2.TXT ] ; then
  echo "copy flash $uf2..."
  cp $uf2 $mnt
  sync

else
  echo "Bad device not Pi-Pico boot device."

fi

echo "umount $mnt"
umount $mnt

exit 0

# simple commands
# mount pico u-disk. (press reset when power on)
sudo mount /dev/sda1 /mnt/pico
# check if it is pico u-disk or not
ls /mnt/pico/
# copy to flash
sudo cp blink.uf2 /mnt/pico
sudo sync
