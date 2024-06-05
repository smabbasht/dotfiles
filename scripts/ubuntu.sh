#! /bin/bash

sudo apt install -y curl clang

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.bashrc
cargo install zoxide

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

sudo snap install gh

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install -y neovim --fix-missing

sudo apt install tmux

sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt update
sudo apt install -y alacritty --fix-missing

/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2024.03.04_all.deb keyring.deb SHA256:f9bb4340b5ce0ded29b7e014ee9ce788006e9bbfe31e96c09b2118ab91fca734
sudo apt install ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update
sudo apt install -y i3 --fix-missing

sudo apt install -y gnome-shell-extension-manager --fix-missing
sudo apt install -y gnome-tweaks --fix-missing

sudo add-apt-repository ppa:codejamninja/jam-os
sudo apt-get update
sudo apt-get install -y polybar --fix-missing

mkdir ~/.bin
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.bin
cd ~/.bin
./oh-my-posh font install

rm -rvf ~/.bashrc
ln -s ~/.config/bash/.bashrc ~/.bashrc
