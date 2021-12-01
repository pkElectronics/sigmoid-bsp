#!/bin/bash
FLASH_FILE=$1

if [ -z $FLASH_FILE ]; then echo "Please specify a file to flash"; exit 1; fi

echo 22 >  /sys/class/gpio/export
echo out > /sys/class/gpio/gpio22/direction 
echo 1 > /sys/class/gpio/gpio22/value 
sleep 1
echo 0 > /sys/class/gpio/gpio22/value 
 
#make flash FLASH_DEVICE=/dev/serial0
avrdude -cwiring -pm2560 -P"/dev/serial0" -D -U"flash:w:$FLASH_FILE:i"
echo 22 >  /sys/class/gpio/unexport
