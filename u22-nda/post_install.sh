#!/bin/bash
# VARIABLES
source .env

# ENABLE GNOME EXTENSIONS
gnome-extensions enable $USER_THEMES
gnome-extensions enable $REMOVABLE_DRIVE_MENU
gnome-extensions enable $CLIPBOARD_INDICATOR
gnome-extensions enable $CAFFEINE
gnome-extensions enable $PLACES_STATUS_INDICATOR
gnome-extensions enable $SOUND_INPUT_OUTPUT_DEVICE_CHOOSER
gnome-extensions enable $TRAY_ICONS_RELOADED
gnome-extensions enable $VITALS

# ASDF
asdf plugin add nodejs $ASDF_NODEJS_GIT
asdf install nodejs latest
asdf global nodejs latest

asdf plugin add ruby $ASDF_RUBY_GIT
asdf install ruby latest
asdf global ruby latest

asdf plugin-add python
asdf install python 3.8.16
asdf install python latest
asdf global python latest

asdf plugin-add postgres
asdf install postgres latest
asdf global postgres latest

asdf plugin add erlang $ASDF_ERLANG_GIT
asdf install erlang latest
asdf global erlang latest

asdf plugin-add elixir $ASDF_ELIXIR_GIT
asdf install elixir latest
asdf global elixir latest

# PYTHON VENV
pip3 install --upgrade pip
pip install virtualenv virtualenvwrapper
asdf reshim

# LAST UPGRADE
sudo apt update -qq
sudo apt autoremove -y -qq
sudo apt upgrade -y -qq
