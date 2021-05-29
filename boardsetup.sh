#!/bin/bash

echo "Sigmoid Board Setup script"

cp ./resources/dt-blob.bin /boot/
sudo raspi-config nonint do_serial 2
echo "dtoverlay=pi3-miniuart-bt" >> /boot/config.txt
echo "enable_uart=1" >> /boot/config.txt
echo "dtoverlay=dr_mode=host" >> /boot/config.txt
echo "dtparam=spi=on" >> /boot/config.txt

echo "Please reboot the system now"


