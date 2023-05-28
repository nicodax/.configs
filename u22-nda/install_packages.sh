#!/bin/bash
# VARIABLES
source .env

# INSTALL
## PACKAGES
echo " ##################################################### "
echo "Installing essential packages..."
sudo xargs -a src/packages.txt -r apt install -y -qq # install the packages listed on the packages.txt file
sudo apt install linux-headers-$(uname -r) -y -qq

## DOCKER
echo " ##################################################### "
echo "Installing Docker..."
sudo apt remove docker docker.io containerd runc
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
sudo mkdir -m 0755 -p $APT_KEYRING
curl -fsSL $DOCKER_UBUNTU_ROOT_URL/gpg | sudo gpg --dearmor -o $APT_KEYRING/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=$APT_KEYRING/docker.gpg] $DOCKER_UBUNTU_ROOT_URL \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | sudo tee $APT_SOURCE_LIST/docker.list > /dev/null
sudo apt update -qq
sudo xargs -a src/docker-packages.txt -r apt install -y -qq # install the packages listed on the docker-packages.txt file
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

## DEB PACKAGES
mkdir -p $DOWNLOADS
### PROTON VPN
echo " ##################################################### "
echo "Installing Proton VPN..."
wget -O $DOWNLOADS/$PROTON_VPN_DEB $PROTON_VPN_URL
sudo apt install $DOWNLOADS/$PROTON_VPN_DEB -y -qq
sudo apt update -qq
sudo xargs -a src/protonvpn-packages.txt -r apt install -y -qq # install the packages listed on the protonvpn-packages.txt file

## SNAPS
echo " ##################################################### "
echo "Installing Snap packages..."
### VISUAL STUDIO CODE
sudo snap install code --classic
### SLACK
sudo snap install slack
### SPOTIFY
sudo snap install spotify
### DISCORD
sudo snap install discord
### DBEAVER
sudo snap install dbeaver-ce
### TEAMS
sudo snap install teams-for-linux
### POSTMAN
sudo snap install postman
### STEAM
sudo snap install steam

# FILE CLEANUP
sudo rm -f $DOWNLOADS/$PROTON_VPN_DEB
