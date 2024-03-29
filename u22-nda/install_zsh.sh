#!/bin/bash
# VARIABLES
source .env

# SET ZSH AS DEFAULT SHELL
sudo chsh -s $(which zsh) $(whoami)

# OH MY ZSH
echo " ##################################################### "
echo "Installing and setting up Oh My Zsh..."
## INSTALL OH MY ZSH
sh -c "$(curl -fsSL $OHMYZSH_INSTALL_SCRIPT)" "" --unattended
## INSTALL PLUGINS
git clone $ZSH_AUTOSUGGESTIONS_GIT ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone $ZSH_SYNTAX_HIGHLIGHTING_GIT ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
## INSTALL ASDF & NODE & RUBY & RAILS & PYTHON
git clone $ASDF_GIT $HOME/.asdf
## INSTALL MESLO FONTS
mkdir -p $USER_FONT_PATH
wget $MESLO_LGS_NF_REGULAR_URL -O $USER_FONT_PATH/MesloLGS-NF-Regular.ttf
wget $MESLO_LGS_NF_BOLD_URL -O $USER_FONT_PATH/MesloLGS-NF-Bold.ttf
wget $MESLO_LGS_NF_ITALIC_URL -O $USER_FONT_PATH/MesloLGS-NF-Italic.ttf
wget $MESLO_LGS_NF_BOLD_ITALIC_URL -O $USER_FONT_PATH/MesloLGS-NF-BoldItalic.ttf
## ZSHRC
rm $HOME/.zshrc
cp src/.zshrc $HOME/.zshrc
## SCRIPTS
mkdir -p $HOME/.scripts
cp src/scripts/* $HOME/.scripts
## ALIASES
cp src/aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh
## TOOL VERSIONS
cp src/.tool-versions $HOME/.tool-versions
