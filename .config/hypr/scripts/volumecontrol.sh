#!/usr/bin/env sh

tagVol="notifyvol"

function notify_vol
{
    vol=`wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2*100}'`
    mute=`wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}'`
    sink=`wpctl inspect @DEFAULT_AUDIO_SINK@ | grep "node.description" | cut -d '"' -f 2`

    echo Volume: $vol %

    if [ "$mute" == "[MUTED]" ] ; then
        dunstify "Muted" -i $ico -a "$sink" -u low -r 91190 -t 800

    elif [ $vol -ne 0 ] ; then
        dunstify -i $ico -a "$sink" -u low -h string:x-dunst-stack-tag:$tagVol \
        -h int:value:"$vol" "Volume: ${vol}%" -r 91190 -t 800

    else
        dunstify "Volume: ${vol}%" -i $ico -a "$sink" -u low -r 91190 -t 800
    fi
}

case $1 in
    i) wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%+
        notify_vol
    ;;
    d) wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-
        notify_vol
    ;;
    m) wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
        notify_vol
    ;;
    *) echo "volumecontrol.sh [action]"
        echo "i -- increase volume [+1]"
        echo "d -- decrease volume [-1]"
        echo "m -- mute [x]"
    ;;
esac
