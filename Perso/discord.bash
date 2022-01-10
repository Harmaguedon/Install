#!/bin/bash

sudo apt install -y libappindicator1 libc++1 libc++1-12 libc++abi1-12 libdbusmenu-gtk4
wget -O /tmp/discord.deb 'https://discord.com/api/download?platform=linux&format=deb'
sudo dpkg -i /tmp/discord.deb 
rm /tmp/discord.deb 
