#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx
#

# merge .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# start pulseaudio server
pulseaudio --start

# initiate compositor (compton)
# compton -c -C -f -D 6 -z -b -r 2 -l 0 -t 0 -o 0.25

# turn on numlock by default
numlockx &

exec awesome
#exec gnome-session
#exec startkde
