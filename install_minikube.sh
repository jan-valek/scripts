#!/bin/bash

# update system
apt update && apt upgrade -y
# install dev tools (may be usefull later)
apt install build-essential
# add current user to docker group
usermod -aG docker ${USER}

#download and install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb 
apt install ./minikube_latest_amd64.deb -y 
rm minikube_latest_amd64.deb

# download and install latest stable kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# install helm version 3.8.1
HELM_VERSION="helm-v3.8.1-linux-amd64.tar.gz" 
curl --output ${HELM_VERSION} https://get.helm.sh/${HELM_VERSION} 
tar -zxvf ${HELM_VERSION} 
mv linux-amd64/helm /usr/local/bin/helm 
rm ${HELM_VERSION} 
rm -rf linux-amd64

echo "Please logout to apply changes"