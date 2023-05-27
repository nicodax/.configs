#!/bin/bash
# VARIABLES
source .env

npm install -g typescript
git clone $POP_SHELL_GIT $HOME/Downloads/pop-shell
cd $HOME/Downloads/pop-shell
make local-install