#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install build-essential cmake protoc-gen-go procps curl dconf file -y

mkdir -p ~/.config/tmux ~/.config/kitty ~/.config/alacritty ~/.config/newsboat ~/.config/i3 ~/.local/share/fonts ~/.config/rofi ~/Downloads ~/Pictures ~/Documents ~/.config/i3blocks/scripts ~/.config/dunst ~/.config/lazygit ~/.config/nvim ~/.config/nushell ~/.config/dconf

git clone https://github.com/nRomanw/my_fork_of_kickstart.nvim.git ~/.config/nvim

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

mkdir -p ~/.cache/carapace
rm ~/.bashrc
ln ~/.dotfiles/.bashrc ~/
ln ~/.dotfiles/dconf/user ~/.config/dconf
ln ~/.dotfiles/kitty/kitty.conf ~/.config/kitty
ln ~/.dotfiles/lazygit/config.yml ~/.config/lazygit
ln ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/
ln ~/.dotfiles/tmux/tmux.conf ~/.config/tmux/
ln ~/.dotfiles/i3/config ~/.config/i3/
ln ~/.dotfiles/i3/swapper ~/.config/i3/
ln ~/.dotfiles/i3/master-stack ~/.config/i3/
ln ~/.dotfiles/i3blocks/config ~/.config/i3blocks/
ln ~/.dotfiles/rofi/config.rasi ~/.config/rofi
ln ~/.dotfiles/dunst/dunstrc ~/.config/dunst
ln ~/.dotfiles/newsboat/config ~/.config/newsboat
ln ~/.dotfiles/nushell/config.nu ~/.config/nushell
ln ~/.dotfiles/nushell/env.nu ~/.config/nushell
ln ~/.dotfiles/starship.toml ~/.config/starship.toml
dconf load /org/gnome/terminal/legacy/profiles:/ < ~/.dotfiles/rose-pine-moon.dconf

git clone --recursive --depth 1 --shallow-submodules https://github.com/akinomyoga/ble.sh.git ~/workspaces/CLONES/ble.sh
make -C ~/workspaces/CLONES/ble.sh install PREFIX=~/.local

sh <(curl -L https://nixos.org/nix/install) --daemon

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo curl -L -o /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

sudo apt update -y

sudo apt install alacritty python-dev-is-python3 gawk fzf gnome-software-plugin-flatpak unzip pipx pkg-config make timeshift gcc gh gnupg newsboat htop neofetch ripgrep git syncthing virt-manager keepassxc zulumount-gui zulucrypt-gui tmux ranger gufw flatpak xclip libssl-dev -y

git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

git clone https://github.com/nRomanw/source-code-pro.git ~/.local/share/fonts/source-code-pro

git clone 'https://github.com/filiparag/wikiman' ~/workspaces/CLONES/wikiman
cd ~/workspaces/CLONES/wikiman/
git checkout $(git describe --tags | cut -d'-' -f1)
make all
sudo make install
cd

git clone https://github.com/qmk/qmk_firmware.git ~/qmk_firmware/
rm ~/qmk_firmware/keyboards/3w6/rev2/config.h
ln ~/.dotfiles/qmk/config.h ~/qmk_firmware/keyboards/3w6/rev2
mkdir ~/qmk_firmware/keyboards/3w6/rev2/keymaps/nRomanw
ln ~/.dotfiles/qmk/keymap.json ~/qmk_firmware/keyboards/3w6/rev2/keymaps/nRomanw

