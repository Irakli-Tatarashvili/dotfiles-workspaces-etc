#!/bin/bash

# IN-FILE DOCUMENTATION!

# after installing EndeavourOS, LOGIN AS SUDO and run this script for fast installation of used softwares.

# unrelated to this script / things you have to do since shell can't do them:
# - add keyboard layout
# - configure libreoffice darkmode



# installs useful pacman packages
sudo pacman -S --noconfirm xclip nodejs npm ksysguard ffmpegthumbs timeshift dotnet-sdk aspnet-runtime nuget

yay -S --noconfirm visual-studio-code-bin

# installs npm global packages
sudo npm install -g typescript @vue/cli

# installs vue template
dotnet new install Microsoft.AspNetCore.SpaTemplates::*

# activates bluetooth on EndeavourOS
sudo systemctl start bluetooth
sudo systemctl enable bluetooth

# activates timeshift autobackup
sudo systemctl enable --now cronie.service

# installing virtual box
sudo pacman -Syu --needed linux-headers --noconfirm

# choose virtualbox-host-modules-arch if asked.
sudo pacman -S virtualbox virtualbox-guest-iso
sudo modprobe vboxdrv
yay -S virtualbox-ext-oracle

# installing virtual box END




# now save whatever you are doing and restart the computer!