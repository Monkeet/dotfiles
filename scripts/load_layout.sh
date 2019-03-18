#!/bin/bash

i3-msg "workspace 1 : " && (chromium &) && disown
i3-msg "workspace 3 : " && (evolution &) && disown
i3-msg "workspace 10 : " && (spotify &) && disown
sleep 2
i3-msg "workspace 2 : " && (gnome-terminal &) && disown
i3-msg "workspace 2 : " && (gnome-terminal &) && disown
sleep 2
i3-msg "workspace 4 : " && (thunar &) && disown
sleep 3
i3-msg "workspace 1 : "
