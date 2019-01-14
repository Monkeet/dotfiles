#!/bin/bash

i3-msg "workspace 4 : " && (thunar &) && sleep 1
i3-msg "workspace 2 : " && (gnome-terminal &) && (gnome-terminal &) && sleep 1
i3-msg "workspace 1 : "
