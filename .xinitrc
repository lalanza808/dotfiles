#!/bin/bash
#
# ~/.xinitrc
#

# load nvidia config
#nvidia-settings -l

# Set wallpaper
#feh --bg ~/walls/city.jpg

# default cursor
#xsetroot -cursor_name left_ptr &amp;amp;

# Load X resources
xrdb -load ~/.Xresources

# personnal bindings
#xbindkeys

# set WM name
#xsetroot -name $1

#status bar
#~/bin/bar/status.sh &amp;amp; # it acts kinda weirdly

# Compositing
# enable RGBA module for GTK
#export GTK_MODULES=rgba

#compton -cCb -t-5 -l-5 -r4.2 -o.4
#compton -cb -o0

# spawn window manager
exec ck-launch-session startkde
