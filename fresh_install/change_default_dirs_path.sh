#! /bin/bash

# Source - https://askubuntu.com/questions/60161/change-the-default-downloads-directory
xdg-user-dirs-update --set DOWNLOAD "$HOME/Storage/Downloads"
xdg-user-dirs-update --set MUSIC "$HOME/Storage/Music"
xdg-user-dirs-update --set DOCUMENTS "$HOME/Storage/Documents"
xdg-user-dirs-update --set PICTURES "$HOME/Storage/Photos"
xdg-user-dirs-update --set VIDEOS "$HOME/Storage/Videos"
