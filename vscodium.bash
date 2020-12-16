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
## Docker
codium --install-extension ms-azuretools.vscode-docker
## GitLens
codium --install-extension eamodio.gitlens
## GitGraph
codium --install-extension mhutchie.git-graph
## Icons
codium --install-extension vscode-icons-team.vscode-icons
## Kubernetes
codium --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
## Path Autocompletion
codium --install-extension christian-kohler.path-intellisense
## PDF
wget https://github.com/tomoki1207/vscode-pdfviewer/releases/download/v1.0.0/pdf-1.0.0.vsix -O /tmp/pdf-1.0.0.vsix
codium --install-extension /tmp/pdf-1.0.0.vsix
rm /tmp/pdf-1.0.0.vsix
## Spell Check
codium --install-extension streetsidesoftware.code-spell-checker
codium --install-extension streetsidesoftware.code-spell-checker-french
cat <<< $(jq '. + {"cSpell.language": "fr,en"}' ~/.config/VSCodium/User/settings.json) > ~/.config/VSCodium/User/settings.json
## Vagrant
codium --install-extension bbenoist.vagrant
## XML
codium --install-extension redhat.vscode-xml
## Yaml + k8s syntax
codium --install-extension redhat.vscode-yaml
