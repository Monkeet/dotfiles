#!/bin/bash
#
# Script pour déployer les fichiers de configuration.
# Prérequis : Vous devez avoir un accès sudo
#

# Vérification des droits
if (( $UID == 0 )) ; then
    echo -e "Vous ne devez pas être root pour exécuter ce script!"
    exit 1
fi

# Applications
sudo cp applications/* /usr/share/applications/

# Configs
sudo cp ~/.dotfiles/config/30-touchpad.conf /etc/X11/xorg.conf.d/
sudo cp ~/.dotfiles/config/90-xhc_sleep.rules /etc/udev/rules.d/
sudo cp ~/.dotfiles/config/environment /etc/
sudo cp ~/.dotfiles/config/logind.conf /etc/systemd/
sudo cp ~/.dotfiles/config/vconsole.conf /etc/

# Scripts
sudo rsync -av ~/.dotfiles/scripts/ /usr/local/bin/ --exclude $0

# Services
sudo cp ~/.dotfiles/services/* /etc/systemd/system

# Games
cp ~/.dotfiles/games/oldschool.prm /~/.config/runescape/share/prms/
sudo cp ~/.dotfiles/games/osbuddy /usr/bin/osbuddy

# User configs
cp .Xresources .hidden ~