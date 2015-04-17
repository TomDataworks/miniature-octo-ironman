#!/bin/dash
dev=/dev/mapper/loop0p5
ovl=/data/3tb/loop0p5.overlay
newdevname=data
size=$(blockdev --getsz "$dev")
loop=$(losetup -f --show -- "$ovl")
printf '%s\n' "0 $size snapshot $dev $loop P 8" | dmsetup create "$newdevname"
