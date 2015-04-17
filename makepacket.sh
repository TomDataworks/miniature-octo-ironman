#!/bin/dash
ETHER="00:25:22:60:D4:72"
echo ${ETHER} | xxd -r -p > wake.packet
