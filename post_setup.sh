#!/usr/bin/env bash

nix-env -iA nixpkgs.fastfetch nixpkgs.neovim nixpkgs.lazygit nixpkgs.sqlite nixpkgs.sqlitebrowser

sudo flatpak install flathub com.belmoussaoui.Authenticator -y
sudo flatpak install flathub org.torproject.torbrowser-launcher -y
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
sudo flatpak install flathub io.podman_desktop.PodmanDesktop -y



cargo install tmux-sessionizer
cargo install zoxide
cargo install nu
cargo install starship
cargo install atuin
cargo install tealdeer

brew install node
brew install go
brew install carapace
