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
### DBEAVER
echo " ##################################################### "
echo "Installing DBeaver..."
wget -O $DOWNLOADS/$DBEAVER_DEB $DBEAVER_URL
sudo apt install $DOWNLOADS/$DBEAVER_DEB -y -qq
### DISCORD
echo " ##################################################### "
echo "Installing Discord..."
wget -O $DOWNLOADS/$DISCORD_DEB $DISCORD_URL
sudo apt install $DOWNLOADS/$DISCORD_DEB -y -qq
### VSCODE
echo " ##################################################### "
echo "Installing VSCode..."
wget -O $DOWNLOADS/$VSCODE_DEB $VSCODE_URL
sudo apt install $DOWNLOADS/$VSCODE_DEB -y -qq

## SNAPS
### SLACK
echo " ##################################################### "
echo "Installing Slack..."
sudo snap install slack
### SPOTIFY
echo " ##################################################### "
echo "Installing Spotify..."
sudo snap install spotify
### TEAMS
echo " ##################################################### "
echo "Installing Teams..."
sudo snap install teams-for-linux
### POSTMAN
echo " ##################################################### "
echo "Installing Postman..."
sudo snap install postman
### STEAM
echo " ##################################################### "
echo "Installing Steam..."
sudo snap install steam

## ENABLE FLATPAKS
echo " ##################################################### "
echo "Enabling Flatpaks..."
flatpak remote-add --if-not-exists flathub $FLATHUB_REPO_URL

# FILE CLEANUP
sudo rm -f $DOWNLOADS/$PROTON_VPN_DEB
sudo rm -f $DOWNLOADS/$DBEAVER_DEB
sudo rm -f $DOWNLOADS/$DISCORD_DEB
sudo rm -f $DOWNLOADS/$VSCODE_DEB
