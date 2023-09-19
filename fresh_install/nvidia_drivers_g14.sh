#!/bin/bash

# Source - https://asus-linux.org/wiki/fedora-guide

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf update -y
sudo dnf install kernel-devel
sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda

# IMPORTANT: Please remember to wait after the RPM transaction ends, until the kmod get built. This can take up to 5 minutes on some systems. 

# sudo systemctl enable nvidia-hibernate.service nvidia-suspend.service nvidia-resume.service nvidia-powerd.service

# sudo reboot
