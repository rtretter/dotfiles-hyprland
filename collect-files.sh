#!/bin/bash

rm -rf .config
rm .bashrc
rm -rf rofi-themes

mkdir .config
mkdir rofi-themes
cp -r ~/.config/dunst ./.config
cp -r ~/.config/hypr ./.config
cp -r ~/.config/kitty ./.config
cp -r ~/.config/rofi ./.config
cp -r ~/.config/swaylock ./.config
cp -r ~/.config/waybar ./.config
cp -r ~/.config/wlogout ./.config
cp -r ~/.config/nvim ./.config

cp ~/.bashrc ./

cp /usr/share/rofi/themes/* ./rofi-themes
