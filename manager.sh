#!/bin/dash
WAKEPACKET="wake.packet"
WAKEFILE="$@"

while [ 1 ]; do
  if [ -f "$@" ]; then
    echo "Remote host has gone down @ $(date)"
    rm "$WAKEFILE"
    
  fi
done

