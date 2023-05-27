#!/bin/bash
# VARIABLES
source .env

sudo bash -c "echo "HandleLidSwitch=suspend-then-hibernate" >> $SYSTEMD_PATH/logind.conf"
sudo cp src/sleep.conf $YSTEMD_PATH/sleepd.conf
