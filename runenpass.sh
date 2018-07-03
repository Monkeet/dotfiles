#!/bin/sh

if [ "$1" = "RESTART" ]; then
	sleep 1
fi


thisfile="`readlink -f "$0"`"
enpassRoot="`dirname "$thisfile"`"

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export LD_LIBRARY_PATH="$enpassRoot/libs:$enpassRoot/plugins/sqldrivers"
export QT_PLUGIN_PATH=$enpassRoot/plugins
export QT_QPA_PLATFORM_PLUGIN_PATH=$enpassRoot/plugins/platforms
export HIDE_TOOLBAR_LINE=0

$enpassRoot/Enpass $*
