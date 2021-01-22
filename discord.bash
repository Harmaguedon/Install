#!/bin/bash

sudo apt install -y libappindicator1 libc++1 libc++1-10 libc++abi1-10 libdbusmenu-gtk4
wget -O /tmp/discord.deb 'https://discord.com/api/download?platform=linux&format=deb'
sudo dpkg -i /tmp/discord.deb 
rm /tmp/discord.deb 
