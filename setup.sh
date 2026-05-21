#!/bin/bash

# 1. Install required packages
sudo pacman -Syu --noconfirm git niri vim waybar alacritty fuzzel

# 2. Clone the repository (replace URL with your actual repo)
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles

# 3. Create target directories
mkdir -p ~/.config/{niri,waybar,alacritty,fuzzel}
mkdir -p ~/.vim/{autoload,colors}

# 4. Symlink Alacritty, Fuzzel, and Niri
ln -sf ~/.dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -sf ~/.dotfiles/fuzzel/fuzzel.ini ~/.config/fuzzel/fuzzel.ini
ln -sf ~/.dotfiles/niri/config.kdl ~/.config/niri/config.kdl

# 5. Symlink Waybar files and the scripts directory
ln -sf ~/.dotfiles/waybar/config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/.dotfiles/waybar/style.css ~/.config/waybar/style.css
ln -sfn ~/.dotfiles/waybar/scripts ~/.config/waybar/scripts

# 6. Symlink Vim configurations
ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc
ln -sf ~/.dotfiles/vim/autoload/plug.vim ~/.vim/autoload/plug.vim
ln -sf ~/.dotfiles/vim/colors/naysayer.vim ~/.vim/colors/naysayer.vim

# 7. Make Waybar scripts executable
chmod +x ~/.dotfiles/waybar/scripts/*.sh
