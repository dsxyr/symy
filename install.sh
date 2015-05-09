#! /bin/bash

#mkdir /mnt/f /mnt/iso
#mount -t ntfs /dev/sda4 /mnt/f
#mount -t iso9660 /mnt/f/debian-testing-amd64-DVD-1.iso /mnt/iso
#echo deb file:/mnt/iso jessie main contrib >> /etc/apt/sources.list
apt-get update
echo install ui
apt-get install xorg
apt-get install openbox
echo installl dirver
apt-get install build-essential linux-headers-$(uname -r) module-assistant
echo installl desk
apt-get install tint2 feh conky volumeicon-alsa compton  xscreensaver amd64-microcode
echo install tools
apt-get install virtualbox deluge tmux vim vlc  ibus chromium filezilla audacious evince stardict synaptic texmaker apvlv vifm xfe qt-sdk
