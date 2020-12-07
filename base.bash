#!/bin/bash

sudo apt update && sudo apt install -y \
    curl \
    git \
    jq \
    lftp \
    libavcodec-dev \
    unzip 

gsettings set org.gnome.desktop.background picture-uri $( cd "${0%/*}" && pwd )/wallpaper.png
