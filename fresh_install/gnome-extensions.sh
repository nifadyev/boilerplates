#! /bin/bash

# ? Rename to gnome.sh

# https://extensions.gnome.org/extension/5278/pano/ - alt clipboard manager

### [] GNOME Settings
# - [x] Включить WPA3 Personal, если роутер поддерживает (Wi-Fi -> chosen network -> Security -> Security)
# - [x] Отключить `Hot Corner` (Multitasking -> Hot Corner)
# - [x] Power
# - Keyboard
    # - Шорткаты:
        # - [x] Ctrl + Alt + T - терминал (gnome-terminal, tilix)
        # - [x] switch to Shift+Space layout change [источник](https://askubuntu.com/a/986629)
            # gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>space']"
            # gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['space<Shift>']"
        # - [x] Управление медиа (если не настроено) - synced via Extension Sync

### GNOME Settings
# - Keyboard & Mouse
    # - [X] Caps Lock - Additional layout options -> Key to choose the 3rd level -> Caps Lock (! пересмотреть после настроек стрелок)
    # - [x] Изначальное поведение `Caps Lock` активируется с помощью нажатия обоих `Shift`

# Global Theme - Nordic или Arc Dark
# Icons - Tela dark
# https://www.gnome-look.org/browse?cat=134 - GNOME темы

# unite@hardpixel.eu - Unite, Unity-like experience for GNOME Shell
# gestureImprovements@gestures - Gesture Improvements, extra gestures for touchpad
# Vitals@CoreCoding.com - Vitals, resource monitor
# clipboard-indicator@tudmotu.com - Clipboard Indicator, Clipboard manager
# extensions-sync@elhan.io - Extensions Sync, import/export Extensions settings

gnome-extensions install \
    unite@hardpixel.eu \
    gestureImprovements@gestures \
    Vitals@CoreCoding.com \
    clipboard-indicator@tudmotu.com \
    extensions-sync@elhan.io


# TODO: set path to saved Settings JSON
# busctl --user call org.gnome.Shell /io/elhan/ExtensionsSync io.elhan.ExtensionsSync read
# Or Push Download button

# Ctrl + Alt + Shift + Up/Down not working is VSCode
# Already applied by Extension Sync
# Source - https://www.reddit.com/r/Fedora/comments/r09ha6/ctrl_shift_alt_down_up_not_registering/

# Invalid Ctrl + ;/. (Or Super + .) behaviour
# Source - https://unix.stackexchange.com/a/694244
gsettings set org.freedesktop.ibus.panel.emoji hotkey "[]"

# TODO: cp safeeyes.json config
# cp ../../configs/safeeyes.json ~/.var/app/io.github.slgobinath.SafeEyes/config/safeeyes/safeeyes.json
