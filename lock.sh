#!/bin/bash

locked=true

# Lock it up!
betterlockscreen -l &

# Mettre la musique en pause
playerctl pause

# If still locked after 20 seconds, turn off screen.

while [[ $locked == "true" ]] ; do
   if sleep 20 && pgrep i3lock ; then
      xset dpms force off
      xbacklight -ctrl smc::kbd_backlight -set 0
   else
      locked=false
   fi
done
