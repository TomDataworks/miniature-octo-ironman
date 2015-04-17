#!/bin/dash
. ./config.sh

while [ 1 ]; do
  if [ -f "$@" ]; then
    echo "Remote host $WAKEADDR has gone down @ $(date)"
    rm "$WAKEFILE"
    socat - UDP-DATAGRAM:$WAKEADDR:7 < wake.packet
  fi
done

