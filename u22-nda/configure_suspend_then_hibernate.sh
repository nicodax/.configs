#!/bin/bash
# VARIABLES
source .env

echo " ##################################################### "
echo "Configuring 'Suspend then Hibernate'..."
sudo bash -c "echo "HandleLidSwitch=suspend-then-hibernate" >> $SYSTEMD_PATH/logind.conf"
sudo cp src/sleep.conf $YSTEMD_PATH/sleepd.conf
