# set keyboard layout to Swiss German
setxkbmap ch

# Load .Xresources file
#xrdb -merge ~/.Xresources

# Start xbindkeys
xbindkeys &

# Set some defaults
export BROWSER=firefox &
export EDITOR=vim &
xdg-mime default evince.desktop application/pdf &

# Set up rotated dual screen without touching my xorg.conf
#xrandr --output DVI-1 --auto --rotate left --pos 0x0 --output DVI-0 --auto --pos 1080x720 --rotate normal

# Read .xsessionrc
#sh ~/.xsessionrc &

# Set wallpaper
feh --bg-scale ~/Pictures/Wallpapers/tiger.jpg

# turn off BIOS beeper
xset b off

# Set WM name (for Java apps)
wmname LG3D

# load composite manager
#xcompmgr -c &
compton &

# load dwmblocks
dwmblocks &

# swap caps and escape (for vim users)
setxkbmap -option caps:swapescape

# set brightness
#brightnessctl -d "amdgpu_bl0" set 30%

# Run dwm
exec dwm
