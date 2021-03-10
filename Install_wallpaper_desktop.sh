#!/bin/bash


sudo wget  -P /home/ https://github.com/redhcp/post-install/archive/main.zip
cd /home/
sudo unzip main.zip -d /home/
cd post-install-main/
cp edr-desktop.png /home/
gsettings set org.gnome.desktop.background picture-uri "file:///home/edr-desktop.png"
cd /home/
sudo rm -f -r post-install*
sudo rm -f main*.zip*