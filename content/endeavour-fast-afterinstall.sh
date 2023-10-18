#!/bin/bash

# IN-FILE DOCUMENTATION!

# after installing EndeavourOS run this script for fast installation of used software.

# unrelated to this script / things you have to do since the shell can't do them:
# - add a keyboard layout
# - configure LibreOffice dark mode

# Function to check the exit status and print an error message
check_exit_status() {
  if [ $? -ne 0 ]; then
    echo "Error: $1 failed."
    exit 1
  fi
}

# installs useful pacman packages
sudo pacman -S --noconfirm xclip nodejs npm ksysguard ffmpegthumbs timeshift dotnet-sdk aspnet-runtime nuget
check_exit_status "Pacman package installation"

# installs vscode
yay -S --noconfirm visual-studio-code-bin
check_exit_status "Visual Studio Code installation"

# installs useful npm global packages
sudo npm install -g typescript @vue/cli
check_exit_status "NPM package installation"

# installs vue template
dotnet new install Microsoft.AspNetCore.SpaTemplates::*
dotnet new install Vue.Simple.Template
check_exit_status "Vue template installation"

# activates bluetooth on EndeavourOS
sudo systemctl start bluetooth
check_exit_status "Bluetooth activation"

sudo systemctl enable bluetooth
check_exit_status "Bluetooth enabling"

# activates timeshift autobackup
sudo systemctl enable --now cronie.service
check_exit_status "Timeshift autobackup activation"

# now save whatever you are doing and restart the computer!
