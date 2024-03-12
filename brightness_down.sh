#!/usr/bin/env bash

DIR="/sys/class/backlight/acpi_video0"
CURR=`cat $DIR/brightness`
AMT=2
if [ $CURR -gt $AMT ]; then
    echo `expr -$AMT + $CURR` > $DIR/brightness
fi
