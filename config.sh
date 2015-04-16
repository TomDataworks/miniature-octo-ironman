#!/bin/dash
ETHER="00:25:22:60:D4:72"
WAKEPACKET="wake.packet"
WAKEADDR="192.168.2.251"
WAKEFILE="$@"
RESCUEDRIVE="/dev/sda"
RESCUEFILE="/data/3tb/500gbsda.img"
RESCUELOG="/data/3tb/500gbsda.log"

rescue_command() {
  ddrescue -r 1 -n -T 1 $RESCUEDRIVE $RESCUEFILE $RESCUELOG
}

suspend_command() {
  pm-suspend
}
