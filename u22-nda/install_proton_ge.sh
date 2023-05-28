#!/bin/bash
# VARIABLES
source .env

echo " ##################################################### "
echo "Installing Proton GE..."
mkdir -p $STEAM_FOLDER_PATH/steam/compatibilitytools.d
wget $PROTON_GE_TAR_GZ_URL -O $DOWNLOADS/$PROTON_GE_TAR_NAME
tar xvfz $DOWNLOADS/$PROTON_GE_TAR_NAME -C $STEAM_FOLDER_PATH/steam/compatibilitytools.d

# FILE CLEANUP
sudo rm -f $DOWNLOADS/$PROTON_GE_TAR_NAME
