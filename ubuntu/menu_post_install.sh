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
function app_libreoffice() {
    sudo apt install -y libreoffice     
    sudo apt autoremove -y  && sudo apt clean
    echo -e "\e[44m_____End LibreOffice_____\e[0m"
}
function app_git() {
    sudo add-apt-repository -y ppa:git-core/ppa 
    sudo apt update; sudo apt install -y git
    echo -e "\e[44m_____End Git_____\e[0m"
}

function wallpaper(){
    cd /home/post-install-main/
    cp edr-desktop.png /home/
    gsettings set org.gnome.desktop.background picture-uri "file:///home/edr-desktop.png"
    cd /home/
    sudo rm -f -r post-install*
    sudo rm -f *main.zip
}
function app_docker() {
    sudo apt install -y curl
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo usermod -aG docker $USER
    echo -e "\e[44m_____End Docker_____\e[0m"
    docker --version
}

function update_system() {
    sudo apt update -y  && sudo apt upgrade -y && sudo apt autoremove -y
}

function all() {
    app_chrome
    app_slack
    app_zoom
    app_libreoffice
    app_docker
    app_git
    update_system
    echo -e "\e[44m_____End ALL\e[0m"
}
function all_standard() {
    app_chrome
    app_slack
    app_zoom
    update_system
    echo -e "\e[44m_____End ALL\e[0m"
}


menu(){
echo -ne "
**OPTIONS**
2) --ALL Standard--
3) Install Zoom 
4) Update_system
5) Install Chrome
6) wallpaper
7) Install Libreoffice
8) Install Slack
9) Install Git
10) Install Docker

1) --ALL--
0) Exit

Choose an option:"
        read a
        case $a in
	        1) all ; menu ;;
            2) all_standard ; menu ;;
	        3) app_zoom ; menu ;;
	        4) update_system ; menu ;;
	        5) app_chrome ; menu ;;
            6) wallpaper ; menu ;;
            7) app_libreoffice ; menu ;;
	        8) app_slack ; menu ;;
            9) app_git ; menu ;;
            10) app_docker ; menu ;;


		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu
