#!/bin/bash

sudo apt update
sudo apt install -y lftp git curl unzip jq

gsettings set org.gnome.desktop.background picture-uri $( cd "${0%/*}" && pwd )/wallpaper.png
