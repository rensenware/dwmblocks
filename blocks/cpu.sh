#!/bin/sh

governor=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

case $governor in
    "powersave")
        printf "   󱉍" ;;
    "performance")
        printf "   󱉌"
esac
#󰡴
#󰡳
#󰒽
#󰒼
#󰻂
#󰻃
#󱉌
#󱉍
