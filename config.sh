#!/bin/dash
ETHER="00:25:22:60:D4:72"
WAKEPACKET="wake.packet"
WAKEADDR="192.168.2.251"
WAKEFILE="$@"
RESCUEFILE="rescue.img"
RESCUELOG="rescue.log"

rescue_command() {
  ddrescue
}
