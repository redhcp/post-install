#!/bin/bash


wget  -P /home/$USER https://github.com/redhcp/testACG/archive/main.zip
sudo unzip -o ~/main

gsettings set org.gnome.desktop.background picture-uri "file:///home/$USER/testACG-main/edrans-desktop-fhd-dark.png"

