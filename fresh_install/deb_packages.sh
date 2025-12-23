# Relevant for Debian 13 with new logic of adding repo

sudo apt update
sudo apt install \
  # neovim requirements
  ninja-build gettext cmake curl build-essential git rigprep \

  syncthing \

# Lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
lazygit --version

# uv
curl -LsSf https://astral.sh/uv/install.sh | sh
# source $HOME/.local/bin/env (sh, bash, zsh)
# source $HOME/.local/bin/env.fish (fish)

# neovim
# cd app_sources
# git clone https://github.com/neovim/neovim.git
# cd nvim
# make CMAKE_BUILD_TYPE=RelWithDebInfo
# sudo make install
# nvim
# ls ~/.config/nvim
# Create symlink to config
# ln -rsf ../boilerplates/nvim ~/.config/nvim
# sudo apt instal ripgrep
# git clone https://github.com/LazyVim/starter ~/.config/nvim-lazy
# cd ~/.config/nvim-lazy
# ls
# rm -rf .git

# firefox
sudo install -d -m 0755 /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); if($0 == "35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3") print "\nThe key fingerprint matches ("$0").\n"; else print "\nVerification failed: the fingerprint ("$0") does not match the expected one.\n"}'
# Does not work
cat <<EOF > /etc/apt/sources.list.d/mozilla.sources
Types: deb
URIs: https://packages.mozilla.org/apt
Suites: mozilla
Components: main
Signed-By: /etc/apt/keyrings/packages.mozilla.org.asc
EOF

echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla
sudo apt-get update && sudo apt-get install firefox
sudo apt-get remove firefox-esr


#nodejs 20 (runtime for gemini-cli and qwen-cli)
# install pre built binaries to avoid extra packages and bloatware
# curl -L https://nodejs.org/dist/v20.18.0/node-v20.18.0-linux-x64.tar.xz | tar -xJ -C ~/system_tools/nodejs20 --strip-components=1
# Symlinks to default bin path
# ln -sf ~/system_tools/nodejs20/bin/node ~/.local/bin/node
# ln -sf ~/system_tools/nodejs20/bin/npm ~/.local/bin/npm
# ln -sf ~/system_tools/nodejs20/bin/npx ~/.local/bin/npx
# Dir for npm bins and node_modules
# mkdir -p ~/.local/npm-global
# npm config set prefix ~/.local/npm-global
# Add to PATH
# if not contains ~/.local/npm-global/bin $PATH
#     echo 'set -gx PATH ~/.local/npm-global/bin $PATH' >> ~/.config/fish/config.fish
#     set -gx PATH ~/.local/npm-global/bin $PATH
# end
# source ~/.config/fish/config.fish
