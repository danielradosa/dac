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

# DISPLAY
xrandr --output HDMI-0 --mode 1920x1080 --rate 144		# Set up resolution and refresh rate
~/.local/bin/nvidia-color-correction &								# Correct some colors

# KEYBOARD AND SCREENSAVER
xset r rate 200 45 &
xset s off
xset s noblank
xset -dpms
setxkbmap -option caps:escape &

# START PROGRAMS
~/.local/bin/newlook &																# Set background and color scheme
dwmblocks &																						# Run dwmblocks after
picom -b --config ~/.config/picom.conf &							# Apply transparency
dunst &																								# Notifications
xautolock -time 10 -locker "slock" &									# Make sure screen locker is running
~/.local/bin/screens &																# Start programs in their respective virtual desktops

# START WM
exec dwm
