#!/bin/bash

## rm
# deleting configs before symlinks ensures we never symlink inside of them
# -n option won't work if a dir already exists with that name

## symlink options
# -n -- if symlink folder already exists then donot symlink inside of it
# -f -- if symlink exists forcefully recreate it. This will ensure the script runs top to bottom
# -s -- to create sym links

echo "Creating symlinks...."

ln -s ~/.dotfiles/config/alacritty ~/.config/
ln -s ~/.dotfiles/config/dunst ~/.config/
ln -s ~/.dotfiles/config/i3 ~/.config/
ln -s ~/.dotfiles/config/mpv ~/.config/
ln -s ~/.dotfiles/config/vim ~/.config/
ln -s ~/.dotfiles/config/picom ~/.config/
ln -s ~/.dotfiles/config/sxiv ~/.config/
ln -s ~/.dotfiles/config/yt-dlp ~/.config/

ln -s ~/.dotfiles/home/.bashrc ~/
ln -s ~/.dotfiles/home/.xinitrc ~/
ln -s ~/.dotfiles/home/.Xresources ~/
ln -s ~/.dotfiles/home/.profile ~/

ln -s ~/.dotfiles/local/bin ~/.local/
ln -s ~/.dotfiles/local/scripts ~/.local/
ln -s ~/.dotfiles/local/share/themes ~/.local/share/
ln -s ~/.dotfiles/local/share/icons ~/.local/share/

echo "Symlinks created. System is ready to use"

