#!/bin/bash
# VARIABLES
source .env

mkdir -p $STEAM_FOLDER_PATH/steam/compatibilitytools.d
wget $PROTON_GE_TAR_GZ_URL -O $HOME/Downloads/$PROTON_GE_TAR_NAME
tar xvfz $HOME/Downloads/$PROTON_GE_TAR_NAME -C $STEAM_FOLDER_PATH/steam/compatibilitytools.d

# FILE CLEANUP
cd $HOME/Downloads
sudo rm $PROTON_GE_TAR_NAME