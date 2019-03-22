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
sudo rsync -av applications/ /usr/share/applications/

# Configs
sudo cp ~/.dotfiles/config/30-touchpad.conf /etc/X11/xorg.conf.d/
sudo cp ~/.dotfiles/config/environment /etc/
sudo cp ~/.dotfiles/config/logind.conf /etc/systemd/
sudo cp ~/.dotfiles/config/vconsole.conf /etc/
rsync -av ~/.dotfiles/.config/ ~/.config/

# Scripts
sudo rsync -av ~/.dotfiles/bin/ /usr/local/bin/
sudo rsync -av ~/.dotfiles/sbin/ /usr/local/sbin/

# Services
sudo rsync -av ~/.dotfiles/services/ /etc/systemd/system/

# Udev rules
sudo rsync -av ~/.dotfiles/udev/ /etc/udev/rules.d/

# Autologin
sudo groupadd -r autologin
sudo gpasswd -a etienne autologin
sudo cp ~/.dotfiles/config/lightdm.conf /etc/lightdm/lightdm.conf

# Games
cp ~/.dotfiles/games/oldschool.prm /~/.config/runescape/share/prms/
sudo cp ~/.dotfiles/games/osbuddy /usr/bin/osbuddy

# User configs
cp .vimrc .xinitrc .Xresources .hidden ~
