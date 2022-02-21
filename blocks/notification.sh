#!/bin/sh

if [ "$(dunstctl is-paused)" = "true" ]; then
    printf "   󰂛"
else
    printf ""
fi
