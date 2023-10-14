#!/bin/bash

# IN-FILE DOCUMENTATION!

# after installing EndeavourOS, LOGIN AS SUDO and run this script for fast installation of used softwares.

# unrelated to this script / things you have to do since shell can't do them:
# - add keyboard layout
# - configure libreoffice darkmode



sudo yay --noconfirm
# installs useful pacman packages
sudo pacman -S --noconfirm xclip nodejs npm ksysguard ffmpegthumbs timeshift dotnet-sdk aspnet-runtime nuget

# installs vscode
yay -S --noconfirm visual-studio-code-bin

# installs useful npm global packages
sudo npm install -g typescript @vue/cli

# installs vue template
dotnet new install Microsoft.AspNetCore.SpaTemplates::*
dotnet new install Vue.Simple.Template

# activates bluetooth on EndeavourOS
sudo systemctl start bluetooth
sudo systemctl enable bluetooth

# activates timeshift autobackup
sudo systemctl enable --now cronie.service


# now save whatever you are doing and restart the computer!