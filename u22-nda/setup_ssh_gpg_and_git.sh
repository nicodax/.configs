#!/bin/bash
# VARIABLES
source .env

# SSH
echo " ##################################################### "
echo "Generating ed25519 SSH key..."
ssh-keygen -t ed25519 -C "$USER_EMAIL"
mv $HOME/.ssh/id_ed25519 $HOME/.ssh/$USER_NAME 
mv $HOME/.ssh/id_ed25519.pub $HOME/.ssh/$USER_NAME.pub

# GPG
echo " ##################################################### "
echo "Generating GPG key..."
gpg --full-generate-key
GPG_ID=$(gpg --list-secret-keys --keyid-format=long | grep sec | cut -d '/' -f 2 | cut -d ' ' -f 1)

# GIT
echo " ##################################################### "
echo "Setting up Git configurations..."
git config --global user.name $USER_NAME
git config --global user.email $USER_EMAIL
git config --global core.editor $GIT_CORE_EDITOR
git config --global user.signingkey $GPG_ID
git config --global commit.gpgsign $GIT_GPG_SIGN
git config --global init.defaultBranch $GIT_DEFAULT_BRANCH
