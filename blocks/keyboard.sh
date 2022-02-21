#!/bin/sh

output=$(setxkbmap -query | sed -r -e '3!d' -e 's,.{12},,' -e 's,.{4}$,,')
printf "󰥻  $output"
