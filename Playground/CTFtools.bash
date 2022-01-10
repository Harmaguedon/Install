#!/bin/bash

# https://github.com/bannsec/stegoVeritas
pip3 install stegoveritas && stegoveritas_install_deps

# https://exiftool.org/
# https://doc.ubuntu-fr.org/foremost
sudo apt install -y \
	exiftool
	foremost
