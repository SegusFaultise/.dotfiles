#!/bin/bash

git clone https://github.com/SegusFaultise/dotfiles.git ~/.dotfiles

mkdir -p ~/.config/{niri,waybar,alacritty,fuzzel}
mkdir -p ~/.vim/{autoload,colors}

ln -sf ~/.dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -sf ~/.dotfiles/fuzzel/fuzzel.ini ~/.config/fuzzel/fuzzel.ini
ln -sf ~/.dotfiles/niri/config.kdl ~/.config/niri/config.kdl

ln -sf ~/.dotfiles/waybar/config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/.dotfiles/waybar/style.css ~/.config/waybar/style.css
ln -sfn ~/.dotfiles/waybar/scripts ~/.config/waybar/scripts

ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc
ln -sf ~/.dotfiles/vim/autoload/plug.vim ~/.vim/autoload/plug.vim
ln -sf ~/.dotfiles/vim/colors/naysayer.vim ~/.vim/colors/naysayer.vim

chmod +x ~/.dotfiles/waybar/scripts/*.sh

vim -E -s -u "$HOME/.vimrc" +PlugInstall +qall
