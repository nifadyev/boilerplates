#! /bin/bash

sudo dnf copr enable lukenukem/asus-linux
sudo dnf update

sudo dnf install asusctl supergfxctl
sudo dnf update --refresh
sudo systemctl enable supergfxd.service

# Optional GUI
sudo dnf install asusctl-rog-gui

# ? Add for performance mode
# TODO: copy from Windows
asusctl fan-curve -e true -m balanced -f cpu --data 40c:0,45c:20,50c:55,55c:75,60c:90,65c:110,70c:125,80c:180
asusctl fan-curve -e true -m balanced -f gpu --data 40c:0,45c:20,50c:55,55c:75,60c:90,65c:110,70c:125,80c:180

asusctl fan-curve -m quiet -f cpu --data 45c:0,50c:20,55c:30,60c:45,65c:75,70c:90,75c:100,80c:125
asusctl fan-curve -m quiet -f gpu --data 45c:0,50c:20,55c:30,60c:45,65c:75,70c:90,75c:100,80c:125

asuscl --chg-limit 80
