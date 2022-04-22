#!/bin/bash
#install config
#i3 setup by nzVoid
#SOFT
sudo apt install i3
sudo apt install rofi
sudo apt install nitrogen
#CONFIG
rm ~/.config/i3/config && cp ./i3/config ~/.config/i3/config
rm /etc/i3status.conf && cp ./i3/i3status.conf /etc
cp monitor_setup.sh displayOn.sh /usr/local/bin
cp ./i3/i3edit.sh /usr/local/bin

#Default terminal set
sudo update-alternative --config x-terminal-emulator
