#!/bin/bash

# INSTALL PACKAGES
bash install_packages.sh

# INSTALL ZSH & CONFIGURE OH MY ZSH
bash install_zsh.sh

# DESKTOP CUSTOMIZATION
bash desktop_customization.sh

# INSTALL AND SETUP TOMB
bash install_and_setup_tomb.sh

# CONFIGURE SUSPEND-THEN-HIBERNATE
bash configure_suspend_then_hibernate.sh

# ENABLE KVM
bash enable_kvm.sh

# SSH & GPG & GIT CONFIG
bash setup_ssh_gpg_and_git.sh

# INSTALL PROTON GE
bash install_proton_ge.sh