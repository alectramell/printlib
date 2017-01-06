#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

read -p "Item Number: " XNUM

clear

qrencode --size=3 -o /home/$USERNAME/Desktop/$XNUM.png "https://github.com/alectramell/printlib/raw/master/$XNUM.txt"

clear

sleep 1

clear

gnome-open /home/$USERNAME/Desktop/$XNUM.png

clear


