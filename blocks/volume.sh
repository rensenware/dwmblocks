#1/bin/sh

volume=$(pamixer --get-volume)
if [ "$volume" -lt 10 ]; then
    output="0$volume"
else
    output="$volume"
fi

if [ "$(pamixer --get-mute)" = "false" ]; then
    if [ "$volume" -gt 66 ]; then
        icon="󰕾 "
    elif [ "$volume" -gt 33 ]; then
        icon="󰖀"
    else
        icon="󰕿"
    fi
else
    icon="󰖁 "
fi

printf "$icon $output%%"

