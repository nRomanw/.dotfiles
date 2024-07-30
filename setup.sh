#!/usr/bin/env bash

sudo timedatectl set-timezone Europe/Berlin

sudo apt update && sudo apt upgrade -y
sudo apt install build-essential procps curl file -y

mkdir -p ~/.config/tmux ~/.config/kitty ~/.config/alacritty ~/.config/newsboat ~/.config/i3 ~/.fonts ~/.config/rofi ~/Downloads ~/Pictures ~/Documents ~/.config/i3blocks/scripts ~/.config/dunst ~/.config/lazygit ~/.config/nvim

git clone https://github.com/vivien/i3blocks-contrib ~/.config/i3blocks/scripts
git clone https://github.com/nRomanw/my_fork_of_kickstart.nvim.git ~/.config/nvim

rm ~/.bashrc
ln ~/.dotfiles/.bashrc ~/
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


sh <(curl -L https://nixos.org/nix/install) --daemon

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


sudo curl -L -o /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

sudo apt update -y

sudo apt install unzip make timeshift gcc dunst gh scrot slick-greeter gnupg newsboat htop neofetch picom autojump tldr ripgrep i3 i3blocks rofi papirus-icon-theme nala alacritty mpv git syncthing virt-manager keepassxc zulumount-gui zulucrypt-gui tmux ranger pcmanfm gufw flatpak xclip libssl-dev -y

nix-env -iA nixpkgs.zathura nixpkgs.neovim nixpkgs.lazygit

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo flatpak install flathub com.brave.Browser -y
sudo flatpak install flathub network.loki.Session -y
sudo flatpak install flathub io.github.ungoogled_software.ungoogled_chromium -y
sudo flatpak install flathub org.gnome.Evince -y
sudo flatpak install flathub io.gitlab.librewolf-community -y
sudo flatpak install flathub com.calibre_ebook.calibre -y
sudo flatpak install flathub org.mozilla.Thunderbird -y
sudo flatpak install flathub com.logseq.Logseq -y
sudo flatpak install flathub org.mozilla.firefox -y
sudo flatpak install flathub org.libreoffice.LibreOffice -y
sudo flatpak install flathub org.gnome.Maps -y
sudo flatpak install flathub com.github.tchx84.Flatseal -y
sudo flatpak install flathub com.vscodium.codium -y

tldr -u

cargo install tmux-sessionizer

git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

git clone https://github.com/nRomanw/source-code-pro.git ~/.fonts

git clone https://github.com/qmk/qmk_firmware.git ~/
mv ~/.dotfiles/rev2 ~/qmk_firmware/keyboards/3w6/
rm ~/qmk_firmware/keyboards/3w6/rev2/config.h
ln ~/.dotfiles/qmk/config.h ~/qmk_firmware/keyboards/3w6/rev2
mkdir ~/qmk_firmware/keyboards/3w6/rev2/keymaps/nRomanw
ln ~/.dotfiles/qmk/keymap.json ~/qmk_firmware/keyboards/3w6/rev2/keymaps/nRomanw

#git clone https://github.com/AdnanHodzic/auto-cpufreq.git
#cd auto-cpufreq && sudo ./auto-cpufreq-installer
#sudo auto-cpufreq --install
#sudo systemctl enable auto-cpufreq

sudo reboot now

#timeshift bzw ich hätte gerne eine elegante backup lösung
