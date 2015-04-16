#!/bin/dash
. ./config.sh

while [ 1 ]; do
  rescue_command
  suspend_command
done
