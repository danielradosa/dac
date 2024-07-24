#!/bin/sh

# Set up resources and modmap
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

[ -f $sysresources ] && xrdb -merge $sysresources
[ -f $sysmodmap ] && xmodmap $sysmodmap
[ -f "$userresources" ] && xrdb -merge "$userresources"
[ -f "$usermodmap" ] && xmodmap "$usermodmap"

# Configure display settings
xrandr --output HDMI-0 --mode 1920x1080 --rate 144

# Set keyboard repeat rate and disable screen saver
xset r rate 200 35
xset s off
xset s noblank
xset -dpms
setxkbmap -option caps:escape

# Start programs
dwmblocks &
dunst &
picom -b --config ~/.config/picom.conf &
xautolock -time 10 -locker "slock" &

# Run virtual desktops and start programs in them
~/.local/bin/newlook &
sleep 1
~/.local/bin/screens &

# Start window manager
exec dwm
