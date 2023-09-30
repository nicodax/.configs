#!/bin/bash
# VARIABLES
source .env

## HEROIC LAUNCHER
echo " ##################################################### "
echo "Installing Heroic Launcher..."
flatpak install flathub $HEROIC_LAUNCHER -y

## LUTRIS
echo " ##################################################### "
echo "Installing Lutris..."
wget -O $DOWNLOADS/$LUTRIS_DEB $LUTRIS_URL
sudo apt install $DOWNLOADS/$LUTRIS_DEB -y -qq

## BOTTLES
echo " ##################################################### "
echo "Installing Bottles..."
flatpak install flathub $BOTTLES -y
