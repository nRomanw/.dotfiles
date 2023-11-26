#!/usr/bin/env bash
apt install curl -y
mkdir -p /etc/apt/keyrings
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
curl -L -o /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" |tee /etc/apt/sources.list.d/syncthing.list
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|tee /etc/apt/sources.list.d/brave-browser-release.list
apt update && apt upgrade -y
apt install alacritty git zsh fish syncthing brave-browser copyq geary keepassxc vscodium firefox zulumount-gui zulucrypt-gui tmux vifm pcmanfm gufw




#
#librewolf
#waterfox
#ungoogled chromium
#signal
#vscodium
#calibre
#vlc
#virtual machine manager
#timeshift
#contacts
#gimp
#bleachbit
#tor
#session
#logseq
#tmux und tmux plugin manager (tpm)
#
#
