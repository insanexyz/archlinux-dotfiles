#!/bin/bash

## rm
# deleting configs before symlinks ensures we never symlink inside of them
# -n option won't work if a dir already exists with that name

## symlink options
# -n -- if symlink folder already exists then donot symlink inside of it
# -f -- if symlink exists forcefully recreate it. This will ensure the script runs top to bottom
# -s -- to create sym links

echo "Creating symlinks...."

rm -rf ~/.config/alacritty
ln -snf ~/.dotfiles/config/alacritty ~/.config/alacritty
rm -rf ~/.config/cherrytree
ln -snf ~/.dotfiles/config/cherrytree ~/.config/cherrytree
rm -rf ~/.config/dunst
ln -snf ~/.dotfiles/config/dunst ~/.config/dunst
rm -rf ~/.config/i3
ln -snf ~/.dotfiles/config/i3 ~/.config/i3
rm -rf ~/.config/mpv
ln -snf ~/.dotfiles/config/mpv ~/.config/mpv
rm -rf ~/.config/nvim
ln -snf ~/.dotfiles/config/nvim ~/.config/nvim
rm -rf ~/.config/picom
ln -snf ~/.dotfiles/config/picom ~/.config/picom
rm -rf ~/.config/sxiv
ln -snf ~/.dotfiles/config/sxiv ~/.config/sxiv
rm -rf ~/.config/yt-dlp
ln -snf ~/.dotfiles/config/yt-dlp ~/.config/yt-dlp

rm -rf ~/.emacs.d
ln -snf ~/.dotfiles/home/.emacs.d ~/.emacs.d
ln -snf ~/.dotfiles/home/.bashrc ~/.bashrc
ln -snf ~/.dotfiles/home/.xinitrc ~/.xinitrc
ln -snf ~/.dotfiles/home/.Xresources ~/.Xresources
ln -snf ~/.dotfiles/home/.profile ~/.profile

ln -snf ~/.dotfiles/local/bin/* ~/.local/bin
ln -snf ~/.dotfiles/local/scripts/* ~/.local/scripts
ln -snf ~/.dotfiles/local/share/fonts/* ~/.local/share/fonts
ln -snf ~/.dotfiles/local/share/themes/* ~/.local/share/themes
ln -snf ~/.dotfiles/local/share/icons/* ~/.local/share/icons

echo "Symlinks created. System is ready to use"

# Todo: delete dir or file only if its normal folder, and not when its symlink

