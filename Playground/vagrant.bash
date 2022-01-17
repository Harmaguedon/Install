#!/bin/bash

sudo apt update 
sudo apt install -y linux-headers-generic virtualbox virtualbox-dkms virtualbox-ext-pack 
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt install -y vagrant

# Beware if the EFI secure boot is enabled, the kernel modules have to be signed before to be used
# https://superuser.com/questions/1438279/how-to-sign-a-kernel-module-ubuntu-18-04
