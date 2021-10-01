#!/bin/sh

echo "Installing ChipDip DACs..."

sudo cp ChipDip-DAC-driver-OSMC-2021.08-1/snd-soc-chipdip-dac-5.10.32-2-osmc.ko /lib/modules/`uname -r`/kernel/sound/soc/bcm/snd-soc-chipdip-dac.ko
sudo cp ChipDip-DAC-driver-OSMC-2021.08-1/chipdip-dac.dtbo /boot/overlays/chipdip-dac.dtbo
sudo depmod

if [ ! -f /boot/config-user.txt ]; then
    sudo touch /boot/config-user.txt
fi

sudo sed -i -e '$adtoverlay=chipdip-dac' /boot/config-user.txt

echo "Reboot to complete installation"
