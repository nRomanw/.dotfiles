#!/bin/env bash

mkdir -p ~/.config/tmux ~/.config/nvim ~/.config/alacritty ~/.config/i3 ~/.fonts ~/.config/rofi ~/Downloads ~/Pictures ~/Documents

rm ~/.bashrc
ln ~/.dotfiles/.bashrc ~/
ln ~/.dotfiles/alacritty.yml ~/.config/alacritty/
ln ~/.dotfiles/tmux.conf ~/.config/tmux/
ln ~/.dotfiles/init.lua ~/.config/nvim/
ln ~/.dotfiles/config ~/.config/i3/
ln ~/.dotfiles/config.rasi ~/.config/rofi

git clone https://github.com/nRomanw/source-code-pro.git ~/.fonts

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install gcc neovim

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
