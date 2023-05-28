#!/bin/bash
# VARIABLES
source .env

echo " ##################################################### "
echo "Installing Pop Shell..."
npm install -g typescript
git clone $POP_SHELL_GIT $DOWNLOADS/pop-shell
cd $DOWNLOADS/pop-shell
make local-install

# FILE CLEANUP
sudo rm -rf $DOWNLOADS/pop-shell