#!/bin/bash

# Install packets
sudo apt update && sudo apt install -y \
    curl \
    git \
    htop \
    jq \
    lftp \
    libavcodec-dev \
    nmap \
    s3cmd \
    transmission \
    unzip \
    vlc \
    wget

# Install Calibre
sudo apt install xdg-utils libxcb-xinerama0
curl -s https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

# Setup wallpaper
gsettings set org.gnome.desktop.background picture-uri $( cd "${0%/*}" && pwd )/wallpaper.png
