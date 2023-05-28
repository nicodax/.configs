#!/bin/bash
# VARIABLES
source .env

echo " ##################################################### "
echo "Installing Tomb..."
wget $TOMB_DOWNLOAD_URL -O $DOWNLOADS/$TOMB_TAR_NAME
tar xvfz $DOWNLOADS/$TOMB_TAR_NAME -C $DOWNLOADS

cd $DOWNLOADS/$TOMB_INSTALL_DIR
sudo make install

echo " ##################################################### "
echo "Digging Tomb..."
sudo tomb dig -s $TOMB_SIZE_IN_MB $TOMB_FILE_FULL_PATH # dig tomb

TMP_KEY=secret.tomb.key
tomb forge $TMP_KEY # forge tomb key
tomb bury -k $TMP_KEY $KEY_PATH # hide tomb key
rm $TMP_KEY

tomb lock $TOMB_FILE_FULL_PATH -k $KEY_PATH # lock tomb with key

tomb open $TOMB_FILE_FULL_PATH -k $KEY_PATH

# FILE CLEANUP
sudo rm -rf $DOWNLOADS/$TOMB_INSTALL_DIR
sudo rm -f $DOWNLOADS/$TOMB_TAR_NAME
