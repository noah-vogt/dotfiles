#!/bin/sh
# set keyboard layout to Swiss German
setxkbmap ch

# start hotkey daemon
xbindkeys &

# set some defaults
export BROWSER=firefox &
export EDITOR=vim &

# set wallpaper
feh --bg-scale ~/.cache/i3lock/current/resized.png

# turn off BIOS beeper
xset b off

# set WM name (for Java apps)
wmname LG3D

# load composite manager
#xcompmgr -c &
picom &

# swap caps and escape (for vim users)
setxkbmap -option caps:swapescape

# set brightness
brightnessctl -d $(brightnessctl -l | grep "class 'backlight'" | head -n 1 | awk '{print $2}' | tr -d "'") set $(cat ~/.config/norisa/brightness-state)%

# load dwmblocks
dwmblocks &

# run dwm
exec dwm
