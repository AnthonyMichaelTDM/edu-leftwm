#!/usr/bin/env bash
#source https://github.com/x70b1/polybar-scripts
#source https://github.com/polybar/polybar-scripts

if ! updates_aur=$(paru -Qua 2> /dev/null | wc -l ); then
    updates_aur=0
fi

if [ $updates_aur -gt 0 ]; then
    echo $updates_aur
else
    echo "0"
fi
