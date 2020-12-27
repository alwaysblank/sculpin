#!/bin/bash

if [ -z "$(pgrep -x polybar)" ]; then
    polybar --list-monitors | while read line; do
        read monitor < <(echo $line | cut -d":" -f1);
        if [[ $line == *"primary"* ]]; then
            MONITOR=$monitor polybar --reload "sys" &
        fi
        MONITOR=$monitor polybar --reload "wm" &
        sleep 1
    done
else
    polybar-msg cmd restart
fi


