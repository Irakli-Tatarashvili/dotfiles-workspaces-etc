#!/bin/bash

# DESCRIPTION: after installing EndeavourOS, run this script for software installation and useful configurations.

# || unrelated to this script / things you have to do since the shell can't do them:

# - add a keyboard layout
# - configure LibreOffice dark mode

# || Function to check the exit status and print an error message

check_exit_status() {
  local status=$?
  if [ $status -ne 0 ]; then
    echo "Error: $1 failed."
    exit 1
  fi
}

# || Installing pacman and AUR packages

# installs useful pacman packages
sudo pacman -S --noconfirm xclip nodejs npm ksysguard ffmpegthumbs timeshift dotnet-sdk aspnet-runtime nuget
check_exit_status "yacman installation of packages"

# installs useful yay packages
yay -S --noconfirm visual-studio-code-bin figma-linux
check_exit_status "yay's installation of AUR packages"

# || other system configurations

# activates bluetooth on EndeavourOS
sudo systemctl start bluetooth
check_exit_status "Bluetooth activation"

sudo systemctl enable bluetooth
check_exit_status "Bluetooth enabling"

# fixing time on linux
# https://www.howtogeek.com/323390/how-to-fix-windows-and-linux-showing-different-times-when-dual-booting/
timedatectl set-local-rtc 1 --adjust-system-clock
check_exit_status "Linux Time got fixed"

# activates timeshift autobackup
sudo systemctl enable --now cronie.service
check_exit_status "Timeshift autobackup activation"

# now save whatever you are doing and reboot the computer!
# test
