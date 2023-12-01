#!/usr/bin/env bash
apt install curl -y

mkdir -p /etc/apt/keyrings

curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
curl -L -o /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg

echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" |tee /etc/apt/sources.list.d/syncthing.list
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|tee /etc/apt/sources.list.d/brave-browser-release.list

apt update && apt upgrade -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

apt install slick-greeter htop neofetch autojump tldr ripgrep i3 i3blocks rofi papirus-icon-theme bleachbit vlc gimp nala alacritty git zsh syncthing brave-browser virt-manager keepassxc zulumount-gui zulucrypt-gui tmux vifm pcmanfm gufw flatpak -y

. flat_installs.sh

git clone https://github.com/AdnanHodzic/auto-cpufreq.git ~/Downloads
cd auto-cpufreq && sudo ./auto-cpufreq-installer

#timeshift bzw ich hätte gerne eine elegante backup lösung
#session
#tmux und tmux plugin manager (tpm)
