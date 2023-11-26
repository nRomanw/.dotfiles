#!/bin/bash
#
mkdir -p ~/.config/tmux ~/.config/nvim ~/.config/alacritty ~/.config/i3

ln ~/.dotfiles/alacritty.yml ~/.config/alacritty/
ln ~/.dotfiles/tmux.conf ~/.config/tmux/
ln ~/.dotfiles/init.lua ~/.config/nvim/
ln ~/.dotfiles/config ~/.config/i3/
