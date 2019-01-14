#!/bin/bash

locked=true
retro=$(xbacklight -ctrl smc::kbd_backlight -get)
playerStatus=$(playerctl status)

# Lock it up!
betterlockscreen -l &

# Mettre la musique en pause?
if [[ $playerStatus == "Playing" ]] ; then
   playerctl pause
fi

# Fermeture du retro-éclairage du clavier
xbacklight -ctrl smc::kbd_backlight 0

# Après 20 secondes, on ferme l'écran
while [[ $locked == "true" ]] ; do
   if sleep 1 && ! pgrep i3lock ; then
      locked=false
   fi
done

# On repart la musique?
if [[ $playerStatus == "Playing" ]] ; then
   playerctl play
fi

# On remet le retro-éclairage
xbacklight -ctrl smc::kbd_backlight $retro
