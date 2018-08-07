#!/bin/bash

#!bin/bash
set -e

cd /tmp

curl http://www.poweredgec.com/files/setupbios-2013-10-03.tgz -o setupbios.tgz

tar -xvf setupbios.tgz

cd setupbios

sudo alternate_version/setupbios.static setting set hyperthreading_technology enabled

# this can cause boot order to not take effect
sudo alternate_version/setupbios.static setting set force_pxe_boot_only disabled

# define a bootorder
sudo alternate_version/setupbios.static setting set boot_device_1 hard_disk
sudo alternate_version/setupbios.static setting set boot_device_2 network
sudo alternate_version/setupbios.static setting set boot_device_3 raid
sudo alternate_version/setupbios.static setting set boot_device_4 usb
sudo alternate_version/setupbios.static setting set boot_device_5 cd_dvd_rom
