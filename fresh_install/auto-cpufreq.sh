#! /bin/bash

cd ~/"System Tools"
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
sudo cp $PWD/../../configs/auto-cpufreq.conf /etc/auto-cpufreq.conf
sudo auto-cpufreq --install
systemctl status auto-cpufreq

# ! (09/23 Install lots of dependencies because there is no rpm (or any) package)
# dmidecode
# gcc
# cairo-devel
# cairo-gobject-devel
# gobject-introspection-devel
# gtk3-devel
# python3-devel
# at-spi2-core-devel
# autoconf
# brotli
# bzip2-devel
# at-spi2-atk-devel
# fontconfig-devel
# atk-devel
# fribidi-devel
# automake
# glib2-devel
# brotli-devel
# harfbuzz-devel
# dbus-devel
# libXau-devel
# freetype-devel
# libXcursor-devel
# gdk-pixbuf2-devel
# libXext-devel
# graphite2-devel
# libXft-devel
# libX11-devel
# libXinerama-devel
# libXcomposite-devel
# libXrender-devel
# libXdamage-devel
# libblkid-devel
# libXfixes-devel
# libdatrie-devel
# libXi-devel
# libffi-devel
# libXrandr-devel
# libglvnd-devel
# libXtst-devel
# libjpeg-turbo-devel
# libcloudproviders-devel
# libpng-devel
# libepoxy-devel
# libsepol-devel
# libglvnd-core-devel
# libtiff-devel
# libicu-devel
# libxcb-devel
# libmount-devel
# libxml2-devel
# libselinux-devel
# pcre2-devel
# libthai-devel
# perl-File-Copy
# libtool
# perl-threads
# libxkbcommon-devel
# pixman-devel
# pango-devel
# python-rpm-macros
# perl-File-Compare
# python3-rpm-generators
# perl-Thread-Queue
# sysprof-capture-devel
# perl-threads-shared
# xorg-x11-proto-devel
# pyproject-rpm-macros
# python3-markdown
# python3-rpm-macros
# wayland-devel

# Installed size: 114 M
