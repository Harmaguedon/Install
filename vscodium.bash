#!/bin/bash

# Install 
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list
sudo apt update && sudo apt install codium

# Configure
## Bash IDE
codium --install-extension mads-hartmann.bash-ide-vscode
## Bash Debbuger
codium --install-extension rogalmic.bash-debug
## Yaml + k8s syntax
codium --install-extension redhat.vscode-yaml
## XML
codium --install-extension redhat.vscode-xml
## Docker
codium --install-extension ms-azuretools.vscode-docker
## GitLens
codium --install-extension eamodio.gitlens
## GitGraph
codium --install-extension mhutchie.git-graph
## Icons
codium --install-extension vscode-icons-team.vscode-icons