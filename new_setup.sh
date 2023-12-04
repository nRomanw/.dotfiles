#!/usr/bin/env bash

sudo timedatectl set-timezone Europe/Berlin

sudo apt update && sudo apt upgrade -y
sudo apt install build-essential procps curl file -y

mkdir -p ~/.config/tmux ~/.config/nvim ~/.config/alacritty ~/.config/i3 ~/.fonts ~/.config/rofi ~/Downloads ~/Pictures ~/Documents

rm ~/.bashrc
ln ~/.dotfiles/.bashrc ~/
ln ~/.dotfiles/alacritty.yml ~/.config/alacritty/
ln ~/.dotfiles/tmux.conf ~/.config/tmux/
ln ~/.dotfiles/init.lua ~/.config/nvim/
ln ~/.dotfiles/config ~/.config/i3/
ln ~/.dotfiles/config.rasi ~/.config/rofi

mkdir -p /etc/apt/keyrings

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install gcc neovim

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
sudo curl -L -o /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg

echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"| sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update -y

sudo apt install slick-greeter htop neofetch autojump tldr ripgrep i3 i3blocks rofi papirus-icon-theme bleachbit vlc gimp nala alacritty git zsh syncthing brave-browser virt-manager keepassxc zulumount-gui zulucrypt-gui tmux vifm pcmanfm gufw flatpak -y

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo flatpak install flathub net.waterfox.waterfox -y
sudo flatpak install flathub io.gitlab.librewolf-community -y
sudo flatpak install flathub com.github.Eloston.UngoogledChromium -y
sudo flatpak install flathub com.vscodium.codium -y
sudo flatpak install flathub org.signal.Signal -y
sudo flatpak install flathub com.calibre_ebook.calibre -y
sudo flatpak install flathub com.github.micahflee.torbrowser-launcher -y
sudo flatpak install flathub com.logseq.Logseq -y
sudo flatpak install flathub org.mozilla.firefox -y
sudo flatpak install flathub org.gnome.Geary -y
sudo flatpak install flathub com.github.hluk.copyq -y
sudo flatpak install flathub org.gnome.Contacts -y
sudo flatpak install flathub org.libreoffice.LibreOffice -y
sudo flatpak install flathub org.gnome.Maps -y
sudo flatpak install flathub com.github.tchx84.Flatseal -y

tldr -u

git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

git clone https://github.com/nRomanw/source-code-pro.git ~/.fonts


git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer

sudo auto-cpufreq --install
sudo systemctl enable auto-cpufreq

sudo reboot now
#timeshift bzw ich hätte gerne eine elegante backup lösung
#session
#tmux und tmux plugin manager (tpm)
