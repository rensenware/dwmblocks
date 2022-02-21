#!/bin/sh

if [ "$(xinput list-props "Synaptics TM3276-022" | sed -r -e '2!d' -e 's,.{23},,')" -eq 1 ]; then
    printf ""
else
    printf "   󰿱"
fi
