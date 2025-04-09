#!/usr/bin/env bash

mkdir -p ~/.config/tmux ~/.config/kitty ~/.config/alacritty ~/.config/newsboat  ~/.local/share/fonts  ~/.config/dunst ~/.config/lazygit ~/.config/nvim ~/.config/nushell ~/.config/dconf

mv ~/.bashrc ~/.bashrc.sysdefault
ln ~/.dotfiles/.bashrc ~/

ln ~/.dotfiles/dconf/user ~/.config/dconf
ln ~/.dotfiles/kitty/kitty.conf ~/.config/kitty
ln ~/.dotfiles/lazygit/config.yml ~/.config/lazygit
ln ~/.dotfiles/alacritty/alacritty.toml ~/.config/alacritty/
ln ~/.dotfiles/tmux/tmux.conf ~/.config/tmux/
ln ~/.dotfiles/dunst/dunstrc ~/.config/dunst
ln ~/.dotfiles/newsboat/config ~/.config/newsboat
ln ~/.dotfiles/nushell/config.nu ~/.config/nushell
ln ~/.dotfiles/nushell/env.nu ~/.config/nushell
