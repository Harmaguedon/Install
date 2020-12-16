#!/bin/bash

sudo apt update && sudo apt install -y gconf2 gconf-service python2
wget -O /tmp/gitkraken.deb https://release.axocdn.com/linux/GitKraken-v6.5.1.deb
sudo dpkg -i /tmp/gitkraken.deb 
rm /tmp/gitkraken.deb 
