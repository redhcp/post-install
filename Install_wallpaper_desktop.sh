#!/bin/bash


wget  -P /home/$USER/ https://github.com/redhcp/post-install/archive/main.zip
cd /home/$USER/
sudo unzip -o ~/main

rm -f main.zip*

gsettings set org.gnome.desktop.background picture-uri "file:///home/$USER/post-install-main/edrans-desktop.png"

