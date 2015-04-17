#!/bin/dash
. ./config.sh

ETHER="00:25:22:60:D4:72"
ETHER2=`echo $ETHER | sed "s/://g"`
ETHER3="${ETHER2}${ETHER2}${ETHER2}${ETHER2}"
ETHER4="FFFFFFFFFFFF${ETHER3}${ETHER3}${ETHER3}${ETHER3}"
echo ${ETHER4} | xxd -r -p > $WAKEPACKET
