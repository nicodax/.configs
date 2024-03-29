#!/bin/bash
# VARIABLES
source .env

# ENABLE GNOME EXTENSIONS
echo " ##################################################### "
echo "Enabling GNOME extensions..."
gnome-extensions enable $USER_THEMES
gnome-extensions enable $REMOVABLE_DRIVE_MENU
gnome-extensions enable $CLIPBOARD_INDICATOR
gnome-extensions enable $CAFFEINE
gnome-extensions enable $PLACES_STATUS_INDICATOR
gnome-extensions enable $SOUND_INPUT_OUTPUT_DEVICE_CHOOSER
gnome-extensions enable $TRAY_ICONS_RELOADED
gnome-extensions enable $VITALS

# ASDF
echo " ##################################################### "
echo "Installing Nodejs..."
asdf plugin add nodejs $ASDF_NODEJS_GIT
asdf install nodejs 20.2.0

echo " ##################################################### "
echo "Installing Ruby..."
asdf plugin add ruby $ASDF_RUBY_GIT
asdf install ruby 3.2.1

echo " ##################################################### "
echo "Installing Python..."
asdf plugin-add python
asdf install python 3.8.16
asdf install python 3.11.3

echo " ##################################################### "
echo "Installing Postgres..."
asdf plugin-add postgres
asdf install postgres 15.3

echo " ##################################################### "
echo "Installing Erlang..."
asdf plugin add erlang $ASDF_ERLANG_GIT
asdf install erlang 26.0

echo " ##################################################### "
echo "Installing Elixir..."
asdf plugin-add elixir $ASDF_ELIXIR_GIT
asdf install elixir 1.14.5-otp-26

echo " ##################################################### "
echo "Installing Redis..."
asdf plugin-add redis $ASDF_REDIS_GIT
asdf install redis 7.0.11

echo " ##################################################### "
echo "Installing Java..."
asdf plugin-add java $ASDF_JAVA_GIT
asdf install java openjdk-20.0.1

# PYTHON VENV
echo " ##################################################### "
echo "Installing Python virtual environments"
pip install --upgrade pip
pip install virtualenv virtualenvwrapper
asdf reshim

# LAST UPGRADE
sudo apt update -qq
sudo apt autoremove -y -qq
sudo apt upgrade -y -qq
