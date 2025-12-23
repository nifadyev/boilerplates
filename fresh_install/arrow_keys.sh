#! /bin/bash

# source - https://github.com/rvaiya/keyd

# sudo dnf copr enable alternateved/keyd
# sudo dnf install keyd
# sudo systemctl enable keyd
# sudo systemctl start keyd
# Create if not created automatically
sudo mkdir /etc/keyd && sudo touch /etc/keyd/default.conf
sudo nano /etc/keyd/default.conf

# debian
git clone https://github.com/rvaiya/keyd
cd keyd
make && sudo make install
sudo systemctl enable --now keyd
# Paste this (move later to confgs-and-scripts)
# [ids]
# *

# [main]
# capslock = overload(capslock, esc)

# [capslock:C]
# h = backspace
# i = up
# j = left
# k = down
# l = right
# ; = delete
sudo keyd reload
