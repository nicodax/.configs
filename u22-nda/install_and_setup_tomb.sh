#!/bin/bash
# VARIABLES
source .env

wget $TOMB_DOWNLOAD_URL -O $HOME/Downloads/$TOMB_TAR_NAME
tar xvfz $HOME/Downloads/$TOMB_TAR_NAME -C $HOME/Downloads

cd $HOME/Downloads/$TOMB_INSTALL_DIR
sudo make install

sudo tomb dig -s $TOMB_SIZE_IN_MB $TOMB_FILE_FULL_PATH # dig tomb

TMP_KEY=secret.tomb.key
tomb forge $TMP_KEY # forge tomb key
tomb bury -k $TMP_KEY $KEY_PATH # hide tomb key
rm $TMP_KEY

tomb lock $TOMB_FILE_FULL_PATH -k $KEY_PATH # lock tomb with key

tomb open $TOMB_FILE_FULL_PATH -k $KEY_PATH


# FILE CLEANUP
cd $HOME/Downloads
sudo rm -r $TOMB_INSTALL_DIR
sudo rm $TOMB_TAR_NAME
