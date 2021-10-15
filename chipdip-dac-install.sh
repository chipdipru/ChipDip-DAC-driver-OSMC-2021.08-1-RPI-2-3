#!/bin/sh

echo "Installing ChipDip DACs..."

sudo cp ChipDip-DAC-driver-OSMC-2021.08-1-RPI-2-3/snd-soc-chipdip-dac-5.10.32-2-osmc.ko /lib/modules/`uname -r`/kernel/sound/soc/bcm/snd-soc-chipdip-dac.ko
sudo cp ChipDip-DAC-driver-OSMC-2021.08-1-RPI-2-3/chipdip-dac.dtbo /boot/overlays/chipdip-dac.dtbo
sudo depmod
sudo sh -c 'echo "dtoverlay=chipdip-dac" > /boot/config-user.txt'

echo "Reboot to complete installation"
