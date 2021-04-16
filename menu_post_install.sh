#!/bin/bash


function app_chrome() {
    #CHROME
    cd /home/
    sudo wget https://dl.google.com/linux/linux_signing_key.pub
    sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt-get install -f
    sudo rm -f google-chrome*.deb
    sudo rm -f *signing_key.pub
    echo -e "\e[44m_____End Chrome_____\e[0m"
}

function app_slack() {
    #SLACK
    cd /home/
    sudo wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.2-amd64.deb
    sudo dpkg -i slack-desktop-*.deb
    sudo rm -f slack*.deb
    echo -e "\e[44m_____End Slack_____\e[0m"
}

function app_zoom() {
    #ZOOM
    cd /home/
    sudo wget https://zoom.us/client/latest/zoom_amd64.deb
    sudo dpkg -i zoom*.deb
    sudo rm -f zoom*.deb
    echo -e "\e[44m_____End Zoom_____\e[0m"
}

function wallpaper(){
    cd /home/post-install-main/
    cp edr-desktop.png /home/
    gsettings set org.gnome.desktop.background picture-uri "file:///home/edr-desktop.png"
    cd /home/
    sudo rm -f -r post-install*
    sudo rm -f *main.zip
}

function update_system() {
    sudo apt update -y  && sudo apt upgrade -y && sudo apt autoremove -y
}

function all() {
    app_chrome
    app_slack
    app_zoom
    wallpaper
    update_system
    echo -e "\e[44m_____End ALL\e[0m"
}


menu(){
echo -ne "
**OPTIONS**
1) Install Chrome
2) Install Slack
3) Install Zoom 
4) Update_system
5) __ALL__
6) wallpaper

0) Exit

Choose an option:"
        read a
        case $a in
	        1) app_chrome ; menu ;;
	        2) app_slack ; menu ;;
	        3) app_zoom ; menu ;;
	        4) update_system ; menu ;;
	        5) all ; menu ;;
            6) wallpaper ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu
