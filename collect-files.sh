#!/bin/bash

rm -rf .config
rm .bashrc
mkdir .config
cp -r ~/.config/dunst ./.config
cp -r ~/.config/hypr ./.config
cp -r ~/.config/kitty ./.config
cp -r ~/.config/rofi ./.config
cp -r ~/.config/swaylock ./.config
cp -r ~/.config/waybar ./.config
cp -r ~/.config/wlogout ./.config
cp ~/.bashrc ./
