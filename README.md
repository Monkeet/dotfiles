# dotfiles
My dotfiles for my fancy archlinux mbp config ^^

## Installation

 $ sudo ./deploy.sh

And reboot your machine :)

## Create a list of installed packages

 $ pacman -Qqdt > packages

## Restore a list of packages (on a new system)

 $ sudo pacman -S $(cat packages)

## If they include aur packages you can

 $ pacaur -S $(cat packages)
