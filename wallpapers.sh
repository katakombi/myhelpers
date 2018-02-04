#!/bin/bash
# Workspace desktop image switcher WDIS 1.0
# Script to change the desktop image when switching workspaces.
# Tested on Linux Mint 13 'cinnamon'
desktop_dir="/home/stefan/Pictures/Wallpapers/" # full path to images directory;
desktop_img[0]="idyll1600.jpg"
desktop_img[1]="thetismoon2k721600.jpg"
desktop_img[2]="biodomesunset1600.jpg"
desktop_img[3]="reverie1600.jpg"
#desktop_img[1]="ulm-meteoprognose.png"
# add more images if using more workspaces

setdesktop() {
   gsettings set org.mate.background picture-filename "$desktop_dir$1"
   }
xprop -root -spy _NET_CURRENT_DESKTOP | (
   while read -r; do
      desk=${REPLY:${#REPLY}-1:1}
      setdesktop ${desktop_img[$desk]}
   done
   ) &
