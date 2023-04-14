#!/bin/bash
# VARIABLES
source .env

# INSTALL ESSENTIAL APPLICATIONS
## PACKAGES
sudo xargs -a packages.txt -r apt install -y -qq # install the packages listed on the packages.txt file
sudo apt install linux-headers-$(uname -r) -y -qq
## DOCKER
sudo apt remove docker docker.io containerd runc
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL $DOCKER_UBUNTU_ROOT_URL/gpg | sudo gpg --dearmor -o $APT_KEYRING/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=$APT_KEYRING/docker.gpg] $DOCKER_UBUNTU_ROOT_URL \
  $(lsb_release -cs) stable" | sudo tee $APT_SOURCE_LIST/docker.list > /dev/null
sudo apt update -qq
sudo xargs -a docker-packages.txt -r apt install -y -qq # install the packages listed on the docker-packages.txt file
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
## DEB PACKAGES
mkdir -p $DOWNLOADS
### PROTON VPN
wget -O $DOWNLOADS/$PROTON_VPN_DEB $PROTON_VPN_URL
sudo apt install $DOWNLOADS/$PROTON_VPN_DEB -y -qq
sudo apt update -qq
sudo xargs -a protonvpn-packages.txt -r apt install -y -qq

## SNAPS
### VISUAL STUDIO CODE
sudo snap install code --classic
### SLACK
sudo snap install slack
### INTELLIJ COMMUNITY
sudo snap install intellij-idea-community --classic
### SPOTIFY
sudo snap install spotify
### DISCORD
sudo snap install discord
### LIBRE OFFICE
sudo snap install libreoffice
