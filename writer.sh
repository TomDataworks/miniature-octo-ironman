#!/bin/dash
. ./config.sh

while [ 1 ]; do
  rescue_command
  touch $TESTFILE
  suspend_command
done
