#!/bin/bash
#
# Script pour déployer les fichiers de configuration.

# Vérification des droits
if (( $UID == 0 )) ; then
    echo -e "Vous ne devez pas être root pour exécuter ce script!"
    exit 1
fi

# Applications
sudo cp applications/* /usr/share/applications/

# Configs
sudo cp conf/30-touchpad.conf /etc/X11/xorg.conf.d/
sudo cp conf/90-xhc_sleep.rules /etc/udev/rules.d/
sudo cp conf/environment /etc/
sudo cp conf/logind.conf /etc/systemd/

# Scripts
sudo cp scripts/* /usr/local/bin

# Services
sudo cp services/* /etc/systemd/system

# Games
cp games/oldschool.prm /home/etienne/.config/runescape/share/prms/
sudo cp games/osbuddy /usr/bin/osbuddy
