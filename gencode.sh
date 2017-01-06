#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

read -p "Item Number: " XNUM

clear

wget -O /home/$USERNAME/Desktop/template.png https://github.com/alectramell/printlib/raw/master/template.png

clear

qrencode --size=3 -o /home/$USERNAME/Desktop/item.png "https://github.com/alectramell/printlib/raw/master/$XNUM.jpg"

clear

ffmpeg -i /home/$USERNAME/Desktop/template.png -i /home/$USERNAME/Desktop/item.png -filter_complex "overlay=0:0" /home/$USERNAME/Desktop/$XNUM.png

clear

sleep 1

clear

rm /home/$USERNAME/Desktop/item.png
rm /home/$USERNAME/Desktop/template.png

clear

gnome-open /home/$USERNAME/Desktop/$XNUM.png

clear


