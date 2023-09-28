#!/bin/bash

# IN-FILE DOCUMENTATION!

# after installing EndeavourOS, you can run this script for fast installation of used softwares.

# unrelated to this script / things you have to do since shell can't do them:
# - add keyboard layout
# - configure libreoffice darkmode

# install needed pacman packages
pacman -S xclip nodejs npm ksysguard ffmpegthumbs timeshift

# npm global packages
npm install -g typescript

# activate bluetooth on EndeavourOS
sudo systemctl start bluetooth
sudo systemctl enable bluetooth

# activate timeshift autobackup
sudo systemctl enable --now cronie.service









# now save whatever you are doing and restart the computer!