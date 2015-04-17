#!/bin/dash
ETHER="aa:bb:cc:dd:ee:ff"
echo ${ETHER} | xxd -r -p > wake.packet
