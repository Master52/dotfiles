#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off


#change your keyboard if you need it
#setxkbmap -layout be

#Some ways to set your wallpaper besides variety or nitrogen
feh --bg-fill ~/.config/bspwm/wall.png &

pkill udiskie
udiskie &

pkill clipmenud
clipmenud&

pkill megasync
megasync &

#feh --randomize --bg-fill ~/Képek/*
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*

xsetroot -cursor_name left_ptr &

#run variety &
run nm-applet &
pamac-tray &
xfce4-power-manager &
numlockx on &
run blueberry-tray &
#compton --config $HOME/.config/bspwm/compton.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
run volumeicon &



while true
do
    xsetroot -name "MASTER | $(upower -i $(upower -e | grep 'BAT') | grep -E 'percentage' | awk  '{print $2}') | $(date '+%A %d %B %Y %T')"
    sleep 1
done&

