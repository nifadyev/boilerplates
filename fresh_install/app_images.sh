# Source - https://github.com/probonopd/go-appimage/blob/master/src/appimaged/README.md
# Remove pre-existing conflicting tools (if any)
systemctl --user stop appimaged.service || true
sudo apt-get -y purge appimagelauncher || true
rm -f ~/.config/systemd/user/default.target.wants/appimagelauncherd.service
systemctl --user daemon-reload

# Clear cache
rm "$HOME"/.local/share/applications/appimage*

# Optionally, install Firejail (if you want sandboxing functionality)

# Download
mkdir -p ~/Applications
wget -c https://github.com/$(wget -q https://github.com/probonopd/go-appimage/releases/expanded_assets/continuous -O - | grep "appimaged-.*-x86_64.AppImage" | head -n 1 | cut -d '"' -f 2) -P ~/Applications/
chmod +x ~/Applications/appimaged-*.AppImage

# Launch
~/Applications/appimaged-*.AppImage
