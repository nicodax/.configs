#!/bin/bash
# VARIABLES
source .env

# SSH
ssh-keygen -t ed25519 -C "$USER_EMAIL"
mv $HOME/.ssh/id_ed25519 $HOME/.ssh/$USER_NAME 
mv $HOME/.ssh/id_ed25519.pub $HOME/.ssh/$USER_NAME.pub
cat $HOME/.ssh/$USER_NAME.pub > $HOME/Downloads/.ssh.pub.key

# GPG
gpg --full-generate-key
GPG_ID=$(gpg --list-secret-keys --keyid-format=long | grep sec | cut -d '/' -f 2 | cut -d ' ' -f 1)
gpg --armor --export $GPG_ID > /home/$(whoami)/Downloads/.gpg.key

# GIT
git config --global user.name $USER_NAME
git config --global user.email $USER_EMAIL
git config --global core.editor $GIT_CORE_EDITOR
git config --global user.signingkey $GPG_ID
git config --global commit.gpgsign $GIT_GPG_SIGN
git config --global init.defaultBranch $GIT_DEFAULT_BRANCH