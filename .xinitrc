#!/bin/sh

export XDG_SESSION_TYPE=x11

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

xsettingsd &

xrdb merge ~/.Xresources
xset r rate 200 50 &

pkill -x ~/.bar.sh
~/.bar.sh &

xinput set-prop "ELAN0718:00 04F3:30FD Touchpad" "libinput Tapping Enabled" 1
xinput set-prop 14 "libinput Accel Profile Enabled" 0, 1

picom &

#feh --bg-scale /home/s1mple/.config/hyde/themes/Gruvbox\ Retro/wallpapers/elliot.jpg

#feh --bg-scale /home/s1mple/.config/hyde/themes/Gruvbox\ Retro/wallpapers/second_best.jpg

#feh --bg-scale /home/s1mple/.config/hyde/themes/Gruvbox\ Retro/wallpapers/czd.png

#feh --bg-scale /home/s1mple/.config/hyde/themes/Gruvbox\ Retro/wallpapers/wallhaven-rq3lrm.jpg

#feh --bg-scale /home/s1mple/.config/hyde/themes/Gruvbox\ Retro/wallpapers/wallpaperflare.com_wallpaper.jpg

#feh --bg-scale /home/s1mple/.config/hyde/themes/Gruvbox\ Retro/wallpapers/wallhaven-x1vk3z.jpg

feh --bg-scale /home/s1mple/.config/hyde/themes/Gruvbox\ Retro/wallpapers/blackwater.png

xsel --clipboard --output | xsel --clipboard --input &

exec dbus-launch --sh-syntax --exit-with-session dwm

#exec dwm

#exec dwm
