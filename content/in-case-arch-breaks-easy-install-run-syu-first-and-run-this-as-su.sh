#!/bin/bash

# in case endeavourOS breaks, easyly install nearly everything needed.
# run syu first, restart and run this bash script as su

# pacman packages
pacman -S xclip timeshift ksysguard nodejs npm


# npm global packages
npm install -g typescript purgecss uglifyjs-folder

# activate bluetooth on EndeavourOS
sudo systemctl start bluetooth
sudo systemctl enable bluetooth




# now restart the computer!