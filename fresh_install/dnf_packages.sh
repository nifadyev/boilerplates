#! /bin/bash

# Speed up and optimization
echo 'fastestmirror=1' | sudo tee -a /etc/dnf/dnf.conf
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf
echo 'deltarpm=true' | sudo tee -a /etc/dnf/dnf.conf

# vlc
# curlie
# fira-code-fonts
# # Torrent client
# transmission
# timeshift
# dconf-editor
# bleachbit - System cleaner
# Restic - old version in rpm, Backup tool
# Kitty - Terminal, might not be the actual version, use installation script from repo for the latest version
# zsh - alternative shell

sudo dnf install \
    curlie \
    fira-code-fonts \
    transmission \
    timeshift \
    dconf-editor \
    bleachbit \
    restic \
    kitty \
    zsh
