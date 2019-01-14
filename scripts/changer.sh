#!/bin/bash

change_wallpaper () {
   let "number = $RANDOM"
   let LASTNUM="`cat $WALLPAPERS/.last` + $number"
   let "number = $LASTNUM % $RANGE"
   echo $number > $WALLPAPERS/.last
   nitrogen --set-scaled --save $WALLPAPERS/${ALIST[$number]}
   /usr/bin/betterlockscreen -u ~/Images/wallpapers &> /dev/null
}

WALLPAPERS="Images/wallpapers"
ALIST=( `ls -w1 $WALLPAPERS` )
RANGE=${#ALIST[@]}

while :
do
   change_wallpaper
   sleep 300
done
