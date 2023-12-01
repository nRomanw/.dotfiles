#!/usr/bin/env bash

mkdir -p /etc/apt/keyrings

curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
curl -L -o /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg

echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" |tee /etc/apt/sources.list.d/syncthing.list
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|tee /etc/apt/sources.list.d/brave-browser-release.list

apt update && apt upgrade -y

apt install slick-greeter htop neofetch autojump tldr ripgrep i3 i3blocks rofi papirus-icon-theme bleachbit vlc gimp nala alacritty git zsh syncthing brave-browser virt-manager keepassxc zulumount-gui zulucrypt-gui tmux vifm pcmanfm gufw flatpak -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub net.waterfox.waterfox -y
flatpak install flathub io.gitlab.librewolf-community -y
flatpak install flathub com.github.Eloston.UngoogledChromium -y
flatpak install flathub com.vscodium.codium -y
flatpak install flathub org.signal.Signal -y
flatpak install flathub com.calibre_ebook.calibre -y
flatpak install flathub com.github.micahflee.torbrowser-launcher -y
flatpak install flathub com.logseq.Logseq -y
flatpak install flathub org.mozilla.firefox -y
flatpak install flathub org.gnome.Geary -y
flatpak install flathub com.github.hluk.copyq -y
flatpak install flathub org.gnome.Contacts -y
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub org.gnome.Maps -y
flatpak install flathub com.github.tchx84.Flatseal -y

git clone https://github.com/AdnanHodzic/auto-cpufreq.git ~/Downloads
cd ~/Downloads/auto-cpufreq && sudo ./auto-cpufreq-installer

#timeshift bzw ich hätte gerne eine elegante backup lösung
#session
#tmux und tmux plugin manager (tpm)
