#!/usr/bin/env bash

DIR="/sys/class/backlight/acpi_video0"
MAX=`cat $DIR/max_brightness`
CURR=`cat $DIR/brightness`
AMT=2
MAX=`expr -$AMT + $MAX`
if [ $CURR -lt $MAX ]; then
    echo `expr $CURR + $AMT` > $DIR/brightness
fi
