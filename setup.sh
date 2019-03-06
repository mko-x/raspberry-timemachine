#!/usr/bin/bash
# @maintainer: mko - dev@m-ko.de
# @job: Create a TimeMachine on Raspberry Pi

echo "Starting..."

if [ "$EUID" -ne 0 ]; then
    echo "Please run as sudo/root. Exiting"
    exit 31
fi

if [ ! -f "/dev/sda" ]; then
    echo "No USB drive found. Exiting"
    exit 32
fi

echo "Formatting"
sudo mkfs.ext4 /dev/sda

echo "Install/Update Netatalk"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install netatalk

echo "Create mount point"
sudo mkdir /mnt/TimeMachine
sudo echo "/dev/sda /mnt/TimeMachine auto defaults 0 2" >> /etc/fstab

echo "Mount device"
sudo mount /dev/sda

echo "Ensure permissions"
sudo chmod 777 /mnt/TimeMachine

echo "Notice disk to Netatalk"
sudo echo "/mnt/TimeMachine \"Time Machine\" options:tm" >> /etc/netatalk/AppleVolumes.default

echo "Restarting Netatalk"
sudo service netatalk restart

echo "Finished. Restart the system with 'sudo reboot'"