#!/bin/bash

# -> DOCUMENTATION!
# -> in case endeavourOS breaks, easily install nearly everything needed.
# tasks:
# add keyboard layout


# THEN
# run pacman -Syu, restart and run this bash script as su


# pacman packages
pacman -S xclip nodejs npm ksysguard ffmpegthumbs timeshift


# npm global packages
npm install -g typescript

# activate bluetooth on EndeavourOS
sudo systemctl start bluetooth
sudo systemctl enable bluetooth

# activate timeshift autobackup
sudo systemctl enable --now cronie.service


# now restart the computer!