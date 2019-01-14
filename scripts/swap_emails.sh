#!/bin/bash
#
#
# Test si thunderbird est en cours d'exécution
 
if ps -e | grep thunderbird > /dev/null ; then
   killall thunderbird
fi

# On swap les comptes emails

if [[ -d ~/.thunderbird.bak ]]; then
   mv ~/.thunderbird ~/.thunderbird.bak2
   mv ~/.thunderbird.bak ~/.thunderbird
elif [[ -d ~/.thunderbird.bak2 ]]; then
   mv ~/.thunderbird ~/.thunderbird.bak
   mv ~/.thunderbird.bak2 ~/.thunderbird
fi

# On démarre thunderbird

nohup /usr/bin/thunderbird &> /dev/null &
