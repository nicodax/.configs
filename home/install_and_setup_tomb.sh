#!/bin/bash
# VARIABLES
source .env

echo " ##################################################### "
echo "Installing Tomb..."
wget $TOMB_DOWNLOAD_URL -O $DOWNLOADS/$TOMB_TAR_NAME
tar xvfz $DOWNLOADS/$TOMB_TAR_NAME -C $DOWNLOADS

cd $DOWNLOADS/$TOMB_INSTALL_DIR
sudo make install

# FILE CLEANUP
sudo rm -rf $DOWNLOADS/$TOMB_INSTALL_DIR
sudo rm -f $DOWNLOADS/$TOMB_TAR_NAME
