#!/bin/bash

mkdir -p ~/.config/fish ~/.config/kitty ~/.config

cp ~/dotfiles/config.fish ~/.config/fish/config.fish
cp ~/dotfiles/starship.toml ~/.config/starship.toml
cp ~/dotfiles/kitty.conf ~/.config/kitty/kitty.conf

echo "Fish, Starship, and Kitty configs installed!"

