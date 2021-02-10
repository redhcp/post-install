#!/bin/bash


#SYSTEM
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

sudo apt install wget
echo -e "\e[44m-----------Fin App System\e[0m"

#CHROME
cd /home/$USER/
wget https://dl.google.com/linux/linux_signing_key.pub
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
echo -e "\e[44m-----------Fin Chrome\e[0m"

#SLACK
cd /home/$USER/
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.2-amd64.deb
sudo dpkg -i slack-desktop-*.deb
echo -e "\e[44m-----------Fin Slack\e[0m"

#ZOOM
cd /home/$USER/
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i zoom*.deb
sudo apt-get install -f -y
echo -e "\e[44m-----------Fin Zoom\e[0m"

#
#


sudo apt update -y
exit