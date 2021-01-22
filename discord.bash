#!/bin/bash

wget -O /tmp/discord.deb 'https://discord.com/api/download?platform=linux&format=deb'
sudo dpkg -i /tmp/discord.deb 
rm /tmp/discord.deb 
