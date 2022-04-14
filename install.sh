#!/bin/bash
#Linux quick setup by nzVoid

#ngrok install
sudo apt install unzip wget
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
sudo mv ./ngrok /usr/bin/ngrok

#nvm install node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
source ~/.bashrc
nvm install node

#vim
sudo apt install vim-gtk
mkdir -p ~/.vim/pack/plugins/start
git clone --depth 1 https://github.com/zxqfl/tabnine-vim ~/.vim/pack/plugins/start/tabnine-vim

#preload
sudo apt install preload

#qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt install qbittorrent

#git
sudo apt install git

#htop
sudo apt install htop

#zathura - pdf viewer
sudo apt install zathura

#vlc
sudo apt install vlc

#music player
sudo apt install mpd
sudo apt install ncmpcpp

#screenshot
sudo apt install scrot
sudo apt install flameshot

#python3
sudo apt install python3
sudo apt install python3-pip

#speedtest-cli
sudo apt install speetest-cli

#BROWSER
#palemoon
sudo add-apt-repository 'deb http://kovacsoltvideo.hu/moonchildproductions/ ./'
wget -q http://kovacsoltvideo.hu/moonchildproductions/public.gpg -O- | sudo apt-key add -
sudo apt update
sudo apt install palemoon

#surf-browser
sudo apt update
sudo apt install surf


#opera
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"
sudo apt update
sudo apt install opera-stable


#operafix
sudo apt install unzip wget git
git clone https://github.com/Ld-Hagen/fix-opera-linux-ffmpeg-widevine.git
cd ./fix-opera-linux-ffmpeg-widevine
sudo ./scripts/fix-opera.sh
sudo ./install.sh
sudo rm fix-opera-linux-ffmpeg-widevine

#vsc
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

#TERMINAL EMULATOR
#terminator
sudo apt install terminator
#alacritty
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty
#lxterminal
sudo apt install lxterminal
#xterm
sudo apt install xterm 

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
