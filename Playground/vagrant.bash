#!/bin/bash

sudo apt update 
sudo apt install -y linux-headers-generic virtualbox virtualbox-dkms virtualbox-ext-pack 
wget -O /tmp/vagrant.deb https://releases.hashicorp.com/vagrant/2.2.13/vagrant_2.2.13_x86_64.deb
sudo apt install /tmp/vagrant.deb
rm /tmp/vagrant.deb