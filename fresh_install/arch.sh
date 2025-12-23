pacman -S keepassdx asusctl supergfxctl power-profiles-daemon vlc curlie transmission-qt lazygit android-tools android-udev woff2-fira-code bleachbit restic kitty zsh neovim

cp nvim configs
add alias to run nvim with copied config

cp ssh keys and configs

copy and enable systemd services

# TODO: Plasmoids
#https://github.com/orblazer/plasma-applet-resources-monitor
#https://github.com/antroids/application-title-bar or https://github.com/dhruv8sh/plasma6-window-title-applet

# TODO: zsh and kitty

# Add asusctl repos
pacman-key --recv-keys 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
   22  sudo pacman-key --recv-keys 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
   23  pacman-key --finger 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
   24  pacman-key --lsign-key 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
   25  sudo pacman-key --lsign-key 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
   26  pacman-key --finger 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35

# Setup Videocard services switching
   32  yay switcheroo-control
   33  systemctl enable --now supergfxd
   34  systemctl enable --now switcheroo-control
# Then setup asusctl
# Then setup bluetooth on login
# Setup docker
sudo pacman -S docker docker-compose docker-buildx
   95  sudo auto-cpufreq --stats
   96  sudo systemctl start docker
   97  sudo systemctl enable docker
   98  sudo usermod -aG docker $USER
  102  sudo groupadd docker
  104  newgrp docker
  105  docker run hello-world
  106  sudo systemctl enable docker.service
  107  sudo systemctl enable containerd.service
  # For lazy.nvim
  yay -S luarocks 
  ln -s "/home/$USER/system_tools/boilerplates/nvim" "/home/$USER/.config/nvim"
