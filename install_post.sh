#!/bin/bash


#SYSTEM
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
echo -e "\e[44m_____Updated_____\e[0m"

sudo apt install wget
echo -e "\e[44m_____End App System_____\e[0m"

#CHROME
cd /home/
sudo wget https://dl.google.com/linux/linux_signing_key.pub
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
sudo rm -f google-chrome*.deb
sudo rm -f *signing_key.pub
echo -e "\e[44m_____End Chrome_____\e[0m"

#SLACK
cd /home/
sudo wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.2-amd64.deb
sudo dpkg -i slack-desktop-*.deb
sudo rm -f slack*.deb
echo -e "\e[44m_____End Slack_____\e[0m"

#ZOOM
cd /home/
sudo wget https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i zoom*.deb
sudo rm -f zoom*.deb
echo -e "\e[44m_____End Zoom_____\e[0m"


#WALLPAPER
sudo wget  -P /home/ https://github.com/redhcp/post-install/archive/main.zip
cd /home/
sudo unzip main.zip -d /home/
cd post-install-main/
cp edrans-desktop-dark.png /home/
gsettings set org.gnome.desktop.background picture-uri "file:///home/edrans-desktop.png"
cd /home/
sudo rm -f -r post-install*
sudo rm -f *main.zip
#

sudo apt update -y
exit