#!/bin/bash
#
mkdir -p ~/.config/tmux ~/.config/nvim ~/.config/alacritty ~/.config/i3 ~/.fonts

ln ~/.dotfiles/alacritty.yml ~/.config/alacritty/
ln ~/.dotfiles/tmux.conf ~/.config/tmux/
ln ~/.dotfiles/init.lua ~/.config/nvim/
ln ~/.dotfiles/config ~/.config/i3/

cd ~/.fonts
git clone https://github.com/nRomanw/source-code-pro.git 
cd ~
