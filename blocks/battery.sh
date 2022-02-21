#!/bin/sh

powerpath="/sys/class/power_supply"
ac=$(cat "$powerpath/AC/online")
bat0lvl=$(cat "$powerpath/BAT0/energy_now")
bat0max=$(cat "$powerpath/BAT0/energy_full")
bat1lvl=$(cat "$powerpath/BAT1/energy_now")
bat1max=$(cat "$powerpath/BAT1/energy_full")
bat=$(echo "scale=0;$(echo "scale=0;$(($bat0lvl+$bat1lvl))*100" | bc)/$(($bat0max+$bat1max))" | bc)

if [ "$bat" -lt 10 ]; then
    output="0$bat"
else
    output="$bat"
fi

if [ "$ac" -eq 1 ]; then
    if [ "$bat" -gt 89 ]; then
        icon=" 󰂅 "
    elif [ "$bat" -gt 79 ]; then
        icon=" 󰂋 "
    elif [ "$bat" -gt 69 ]; then
        icon=" 󰂉 "
    elif [ "$bat" -gt 49 ]; then
        icon=" 󰂈 "
    elif [ "$bat" -gt 29 ]; then
        icon=" 󰂇 "
    else
        icon=" 󰂆 "
    fi
else
    if [ "$bat" -gt 89 ]; then
        icon="󰁹"
    elif [ "$bat" -gt 79 ]; then
        icon="󰂂"
    elif [ "$bat" -gt 69 ]; then
        icon="󰂀"
    elif [ "$bat" -gt 49 ]; then
        icon="󰁽"
    elif [ "$bat" -gt 29 ]; then
        icon="󰁼"
    else
        icon="󰁻"
    fi
fi

printf "$icon $output%%"

if [ "$bat" -lt 10 ] && [ "$ac" -eq 0 ]; then
    dunstify -a "systemindicator" -i "battery-empty" -r "990011" "Battery dangerously low!"
fi
