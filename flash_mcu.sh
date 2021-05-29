#!/bin/bash
sudo stm32flash -b 115200 -w /home/pi/klipper/out/klipper.bin -v -g 0 -i '16,-17,17,17,17:-16,-17,17' /dev/serial0