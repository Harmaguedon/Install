#!/bin/bash

## Kubectl
kube_version=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
sudo wget -O /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/${kube_version}/bin/linux/amd64/kubectl
sudo chmod +x /usr/local/bin/kubectl 
sudo ln -s /usr/local/bin/kubectl /usr/local/bin/k

## Helm
helm_version=$(curl -s https://api.github.com/repos/helm/helm/releases/latest | jq -r '.tag_name')
wget -O /tmp/helm.tgz https://get.helm.sh/helm-${helm_version}-linux-amd64.tar.gz
sudo tar -C /usr/local/bin/ --remove-files --strip-components=1 -xzvf /tmp/helm.tgz linux-amd64/helm
helm version
