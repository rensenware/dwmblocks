#!/bin/sh

volume=$(pamixer --get-volume --default-source)

if [ "$volume" -lt 10 ]; then
    output="0$volume"
else
    output="$volume"
fi

if [ "$(pamixer --get-mute --default-source)" = "false" ]; then
    if [ "$volume" -gt 49 ]; then
        icon="󰍬"
    else
        icon="󰍮"
    fi
else
    icon="󰍭"
fi

printf "$icon $output%%"
