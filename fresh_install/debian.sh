# WORK
# https://github.com/jpbruinsslot/slack-term
# https://github.com/ankitpokhrel/jira-cli - use
# https://github.com/harrisoncramer/gitlab.nvim
# https://gitlab.com/gitlab-org/cli - off client
# https://github.com/zaquestion/lab - alt client
# https://github.com/superagent-ai/grok-cli
# https://github.com/holasoymalva/deepseek-cli
# https://github.com/thechrismoth/GigaChat-Cli
# tldr - https://github.com/tldr-pages/tldr
# https://github.com/jesseduffield/lazydocker
# CLI cheatsheets
# tldr
# https://github.com/denisidoro/navi?tab=readme-ov-file#installation - community and custom cheatsheets
# https://github.com/chubin/cheat.sh - interactive, not offline
#
# other TUIs
# https://github.com/rothgar/awesome-tuis?tab=readme-ov-file#miscellaneous
# https://notes.aliciasykes.com/41983/cli-tools-you-can-t-live-without
# file manager - https://github.com/Canop/broot
# db management - https://github.com/jorgerojas26/lazysql
# sql ide - https://github.com/tconbeer/harlequin
# http client - https://github.com/Julien-cpsn/ATAC
# another http - https://github.com/LucasPickering/slumber
# and other - https://github.com/darrenburns/posting
# resiurce monitor - https://github.com/aristocratos/btop

# ! DO NOT set RU locale on image install
# Setup mcp for gemini and qwen - https://github.com/google-gemini/gemini-cli/blob/main/docs/tools/mcp-server.md
#
# Browser setup
# add firefox repo, install latest firefox
# login into firefox account
# setup keepassxc integration
# setup throne, otherwise cannot login to jira
# login into: mail.yandex.ru, slack, jira, gitlab
# https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip -> double click on extracted ttf
# terminal - kitty + fish + nerd font
# WORK
# sudo apt install nodejs npm # 20+, lots of bloatware
# or curl -qL https://www.npmjs.com/install.sh | sh
# sudo npm install -g @google/gemini-cli
# https://github.com/QwenLM/qwen-code
# sudo npm install -g @qwen-code/qwen-code@latest
# GOOGLE_CLOUD_PROJECT= gemini  # run gemini
# build latest neovim release from source
# setup lazyvim or copy my config
# setup git
# copy repos
# setup git creds in each repo
# build containers
# setup uv
# mkdir ~/.virtualenvs
# setup venvs
# $ curl -L https://github.com/golang-migrate/migrate/releases/download/$version/migrate.$os-$arch.tar.gz | tar xvz
# sudo mv migrate /usr/local/bin/
# check test commands
#
# Post setup changes
# KDE - delete kate, konqueror
#
#
#  1  sudo apt install keepassxc
#   2  sudo apt update
#   3  su -
#   4  sudo apt install keepassxc
#   5  groups pecan
#   6  sudo apt update
#   7  sudo apt install
#   8  groups pecan
#   9  sudo -l -U pecan
#  11  su -
#  16  echo "deb ppa:apt-fast/stable" | sudo tee /etc/apt/sources.list.d/repository-name.list
#  17  sudo apt update
#  18  cat /etc/apt/sources.list.d/repository-name.list
#  19  ls /etc/apt/sources.list.d
#  20  deb [signed-by=/etc/apt/keyrings/apt-fast.gpg] http://ppa.launchpad.net/apt-fast/stable/ubuntu focal main
#  21  echo "deb [signed-by=/etc/apt/keyrings/apt-fast.gpg] http://ppa.launchpad.net/apt-fast/stable/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/repository-name.list
#  22  sudo apt update
#  23  sudo apt install apt-fast
#  24  sudo apt update
#  25  sudo apt install keepassxc
#  26  sudo dpkg-reconfigure locales
#  27  sudo nano /etc/default/locale
#  28  nano ~/.pam_environment
#  29  sudo apt update && apt full-upgrade -y
#  30  su -
#  31  sudo apt install -y firmware-misc-nonfree linux-headers-amd64
#  50  sudo apt-get install ninja-build gettext cmake curl build-essential git
#  51  make CMAKE_BUILD_TYPE=RelWithDebInfo
#  52  sudo make install
#  53  nvim
#  54  ls ~/.config/nvim
#  55  git clone https://github.com/LazyVim/starter ~/.config/nvim
#  56  cd ~/.config/nvim
#  57  ls
#  58  rm -rf .git
#  59  nvim
#  60  ls -lah
#  61  cd lua
#  62  ls
#  63  cd ..
#  64  nvim .
#  65  cd -
#  66  cd ~/app_sources/
#  67  mkdir gemini-cli
#  68  cd gemini-cli
#  69  touch Dockerfile
#  70  nvim Dockerfile
#  71  docker --version
#  72  apt show docker
#  73  for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
#  74  sudo apt-get install ca-certificates curl
#  75  sudo install -m 0755 -d /etc/apt/keyrings
#  76  sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
#  77  sudo chmod a+r /etc/apt/keyrings/docker.asc
#  78  echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
#  79    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#  80  sudo apt-get update
#  81  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#  82  sudo usermod -aG docker $USER
#  83  newgrp docker
#  84  docker run hello-world
#  85  sudo systemctl enable docker.service
#  86  sudo systemctl enable containerd.service
#  87  sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
#  88  sudo chmod g+rwx "$HOME/.docker" -R
#  89  sudo lsblk -f | grep ntfs
#  90  mkdir ~/Storage
#  91  echo 'UUID="..." /home/pecan/Storage    ntfs-3g defaults    0 0' | sudo tee --append /etc/fstab
#  92  systemctl daemon-reload
#  93  sudo mount -a

# 103  sudo chmod g+rwx "$HOME/.docker" -R

# 117  history
# 119  git status
# 120  make db
# 121  make grpc-generate
# 122  make rebuild
# 123  apt show lazygit
# 124  history
#
# another history
#     1  sudo apt install keepassxc
#   2  sudo apt update
#   3  su -
#   4  sudo apt install keepassxc
#   5  groups pecan
#   6  sudo apt update
#   7  sudo apt install
#   8  groups pecan
#   9  sudo -l -U pecan
#  10  visudo
#  11  su -
#  12  sudo add-apt-repository ppa:apt-fast/stable
#  13  sudo add apt-repository ppa:apt-fast/stable
#  14  sudo apt add-repository ppa:apt-fast/stable
#  15  sudo apt install software-properties-common
#  16  echo "deb ppa:apt-fast/stable" | sudo tee /etc/apt/sources.list.d/repository-name.list
#  17  sudo apt update
#  18  cat /etc/apt/sources.list.d/repository-name.list
#  19  ls /etc/apt/sources.list.d
#  20  deb [signed-by=/etc/apt/keyrings/apt-fast.gpg] http://ppa.launchpad.net/apt-fast/stable/ubuntu focal main
#  21  echo "deb [signed-by=/etc/apt/keyrings/apt-fast.gpg] http://ppa.launchpad.net/apt-fast/stable/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/repository-name.list
#  22  sudo apt update
#  23  sudo apt install apt-fast
#  24  sudo apt update
#  25  sudo apt install keepassxc
#  26  sudo dpkg-reconfigure locales
#  27  sudo nano /etc/default/locale
#  28  nano ~/.pam_environment
#  29  sudo apt update && apt full-upgrade -y
#  30  su -
#  31  sudo apt install -y firmware-misc-nonfree linux-headers-amd64
#  32  su -
#  33  sudo apt install -y debootstrap systemd-nspawn
#  34  sudo apt install -y debootstrap systemd-container
#  35  sudo debootstrap --variant=buildd stable /tmp/buildenv http://deb.debian.org/debian
#  36  ls
#  37  ls -lah
#  38  mkdir app_sources
#  39  cd app_sources
#  40  git clone https://github.com/neovim/neovim.git
#  41  cd neovim/
#  42  sudo systemd-nspawn -D /tmp/buildenv <<EOF
#  43    apt update
#  44    apt install -y --no-install-recommends ninja-build gettext cmake curl build-essential git
#  45    make install
#  46    checkinstall --nodoc make install
#  47  EOF
#  48  sudo umount /tmp/buildenv/src
#  49  sudo rm -rf /tmp/buildenv
#  50  sudo apt-get install ninja-build gettext cmake curl build-essential git
#  51  make CMAKE_BUILD_TYPE=RelWithDebInfo
#  52  sudo make install
#  53  nvim
#  54  ls ~/.config/nvim
#  55  git clone https://github.com/LazyVim/starter ~/.config/nvim
#  56  cd ~/.config/nvim
#  57  ls
#  58  rm -rf .git
#  59  nvim
#  60  ls -lah
#  61  cd lua
#  62  ls
#  63  cd ..
#  64  nvim .
#  65  cd -
#  66  cd ~/app_sources/
#  67  mkdir gemini-cli
#  68  cd gemini-cli
#  69  touch Dockerfile
#  70  nvim Dockerfile
#  71  docker --version
#  72  apt show docker
#  73  for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
#  74  sudo apt-get install ca-certificates curl
#  75  sudo install -m 0755 -d /etc/apt/keyrings
#  76  sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
#  77  sudo chmod a+r /etc/apt/keyrings/docker.asc
#  78  echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
#  79    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#  80  sudo apt-get update
#  81  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#  82  sudo usermod -aG docker $USER
#  83  newgrp docker
#  84  docker run hello-world
#  85  sudo systemctl enable docker.service
#  86  sudo systemctl enable containerd.service
#  87  sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
#  88  sudo chmod g+rwx "$HOME/.docker" -R
#  89  sudo lsblk -f | grep ntfs
#  90  mkdir ~/Storage
#  91  echo 'UUID="..." /home/pecan/Storage    ntfs-3g defaults    0 0' | sudo tee --append /etc/fstab
#  92  systemctl daemon-reload
#  93  sudo mount -a
#  9
# 102  docker build .
# 103  sudo chmod g+rwx "$HOME/.docker" -R
# 104  docker build .
# 105  cd app_sources/gemini-cli/
# 106  docker build .
# 107  docker ps
# 108  cd app_sources/gemini-cli/
# 109  docker build .
# 110  ls
# 111  rm Dockerfile
# 112  cd ..
# 113  git clone https://github.com/google-gemini/gemini-cli.git
# 114  cd gemini-cli/
# 115  touch Dockerfile
# 116  nvim Dockerfile
# 117  docker build -o . .
# 118  firefox --version
# 119  nvim Dockerfile
# 120  docker build -o . .
# 121  ls
# 122  cd binaries/
# 123  ls
# 124  ./gemini-linux
# 125  chmod +x ./gemini-linux
# 126  ./gemini-linux
# 127  sudo install -d -m 0755 /etc/apt/keyrings
# 128  wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
# 129  deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/debian/ bookworm main
# 130  touch /etc/apt/sources.list.d/mozilla-firefox.list
# 131  sudo touch /etc/apt/sources.list.d/mozilla-firefox.list
# 132  nvim /etc/apt/sources.list.d/mozilla-firefox.list
# 133  sudo nvim /etc/apt/sources.list.d/mozilla-firefox.list
# 134  nvim /etc/apt/sources.list.d/mozilla-firefox.list
# 135  sudo apt update
# 136  sudo rm /etc/apt/sources.list.d/mozilla-firefox.list
# 137  wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
# 138  nvim /etc/apt/keyrings/packages.mozilla.org.asc
# 139  cat <<EOF > /etc/apt/sources.list.d/mozilla.sources
# 140  Types: deb
# 141  URIs: https://packages.mozilla.org/apt
# 142  Suites: mozilla
# 143  Components: main
# 144  Signed-By: /etc/apt/keyrings/packages.mozilla.org.asc
# 145  EOF
# 146  cat <<EOF > /etc/apt/sources.list.d/mozilla.sources
# 147  Types: deb
# 148  URIs: https://packages.mozilla.org/apt
# 149  Suites: mozilla
# 150  Components: main
# 151  Signed-By: /etc/apt/keyrings/packages.mozilla.org.asc
# 152  EOF
# 153  cat <<EOF > /etc/apt/sources.list.d/mozilla.sources
# 154  Types: deb
# 155  URIs: https://packages.mozilla.org/apt
# 156  Suites: mozilla
# 157  Components: main
# 158  Signed-By: /etc/apt/keyrings/packages.mozilla.org.asc
# 159  EOF
# 160  cat <<EOF > /etc/apt/sources.list.d/mozilla.sources
# 161  Types: deb
# 162  URIs: https://packages.mozilla.org/apt
# 163  Suites: mozilla
# 164  Components: main
# 165  Signed-By: /etc/apt/keyrings/packages.mozilla.org.asc
# 166  EOF
# 167  cat /etc/apt/sources.list.d/mozilla.sources
# 168  cat <<EOF | sudo tee /etc/apt/sources.list.d/mozilla.sources
# 169  Types: deb
# 170  URIs: https://packages.mozilla.org/apt
# 171  Suites: mozilla
# 172  Components: main
# 173  Signed-By: /etc/apt/keyrings/packages.mozilla.org.asc
# 174  EOF
# 175  cat /etc/apt/sources.list.d/mozilla.sources
# 176  echo '
# 177  Package: *
# 178  Pin: origin packages.mozilla.org
# 179  Pin-Priority: 1000
# 180  ' | sudo tee /etc/apt/preferences.d/mozilla
# 181  sudo apt-get update
# 182  cd ..
# 183  nvim Dockerfile
# 184  docker build -o . .
# 185  nvim Dockerfile
# 186  docker build -o . .
# 187  curl -fsSL https://dl.google.com/gemini/install.sh | bash
# 188  history
# 189  pipewire --version
# 190  history
