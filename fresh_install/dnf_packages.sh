#! /bin/bash

# Speed up and optimization
echo 'fastestmirror=1' | sudo tee -a /etc/dnf/dnf.conf
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf
echo 'deltarpm=true' | sudo tee -a /etc/dnf/dnf.conf

# vlc
# tilix
# httpie
# telegram-desktop
# fira-code-fonts
# gnome-tweaks
# # Required for Unite GNOME extension
# xprop
# # Torrent client
# transmission
# timeshift
# gnome-extensions-app
# dconf-editor
# lollypop # Music player
# yt-dlp
# bleachbit - System cleaner
# Steam
# Restic - old version in rpm, Backup tool
# Kitty - Terminal, might not be the actual version, use installation script from repo for the latest version
# zsh - alternative shell

sudo dnf install \
    vlc \
    tilix \
    httpie \
    telegram-desktop \
    fira-code-fonts \
    gnome-tweaks \
    xprop \
    transmission \
    timeshift \
    gnome-extensions-app \
    dconf-editor \
    lollypop \
    yt-dlp \
    bleachbit \
    steam \
    restic \
    kitty \
    zsh
