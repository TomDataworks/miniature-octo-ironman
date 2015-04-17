#!/bin/dash
ETHER="00:25:22:60:D4:72"
WAKEPACKET="wake.packet"
WAKEADDR="192.168.2.251"
TESTFILE="testfile"
# RESCUEDRIVE="/dev/disk/by-id/wwn-0x50014ee2558e9bac"
RESCUEDRIVE="/dev/sda"
RESCUEFILE="/data/3tb/500gbsdanew.img"
RESCUELOG="/data/3tb/500gbsdanew.log"
DELAYTIMER=500

rescue_command() {
  ddrescue -r 1 $RESCUEDRIVE $RESCUEFILE $RESCUELOG
}

suspend_command() {
  echo "Done?"
  #sleep 5; echo "- - -" > /sys/class/scsi_host/host2/scan
  #sleep 1
  #echo "Trying to suspend..."
  #pm-suspend
}
