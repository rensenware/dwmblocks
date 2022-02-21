#!/bin/sh

brightness=$(xbacklight -get)

if [ "$brightness" -lt 10 ]; then
    output="0$brightness"
else
    output="$brightness"
fi

if [ "$brightness" -gt 66 ]; then
    icon="󰃠 "
elif [ "$brightness" -gt 33 ]; then
    icon="󰃟 "
else
    icon="󰃞 "
fi

printf "$icon $output%%"
