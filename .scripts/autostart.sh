#!/bin/env sh
setxkbmap latam
udiskie -an&
nm-applet&
pulseaudio --start&
nitrogen --restore&
#clipit&
#light-locker --loc k-on-suspend
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1&

if ! urxvtc "$@"
  urxvtd -q -o -f
  urxvtc "$@"
fi

