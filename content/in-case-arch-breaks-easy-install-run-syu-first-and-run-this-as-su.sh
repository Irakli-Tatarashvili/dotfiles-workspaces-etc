#!/bin/bash

# -> DOCUMENTATION!
# -> in case endeavourOS breaks, easily install nearly everything needed.
# tasks:
# add keyboard layout


# THEN
# run syu, restart and run this bash script as su




# pacman packages
pacman -S xclip timeshift ksysguard nodejs npm ffmpegthumbs


# npm global packages
npm install -g typescript uglifyjs-folder

# activate bluetooth on EndeavourOS
sudo systemctl start bluetooth
sudo systemctl enable bluetooth




# now restart the computer!