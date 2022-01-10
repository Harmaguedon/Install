#!/bin/bash

# Install packets
sudo apt update && sudo apt install -y \
    apt-transport-https \
    curl \
    deluge \
    git \
    gimp \
    gparted \
    gthumb \
    htop \
    jq \
    lftp \
    libavcodec-dev \
    libreoffice \
    nmap \
    python3-pip \
    s3cmd \
    unzip \
    vim \
    vlc \
    wget

# Setup wallpaper
gsettings set org.gnome.desktop.background picture-uri $( cd "${0%/*}" && pwd )/files/wallpaper.png
