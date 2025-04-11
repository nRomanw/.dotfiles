#!/usr/bin/env bash

mkdir -p ~/.config/tmux ~/.config/kitty ~/.config/alacritty ~/.config/newsboat  ~/.local/share/fonts  ~/.config/dunst ~/.config/lazygit ~/.config/nvim ~/.config/nushell ~/.config/dconf ~/.config/ghostty ~/.config/nvim

git clone https://github.com/nRomanw/my_fork_of_kickstart.nvim.git ~/.config/nvim

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
ln ~/.dotfiles/starship.toml ~/.config
ln ~/.dotfiles/ghostty/config ~/.config/ghostty
