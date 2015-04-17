#!/bin/dash
. ./config.sh

while [ 1 ]; do
  if [ -f $TESTFILE ]; then
    echo "Remote host $WAKEADDR has gone down @ $(date)"
    rm "$TESTFILE"
    echo "Waiting $DELAYTIMER to wake up remote host"
    sleep $DELAYTIMER
    echo "Waking up remote host"
    # socat - UDP-DATAGRAM:$WAKEADDR:7 < wake.packet
    etherwake $ETHER
  fi
  sleep 1
done
