#!/bin/sh
# Give dmenu list of all unicode characters to copy.
# Shows the selected character in dunst if running.

chosen=$(cat ~/MEGA/MEGAsync/Scripts/unicodeFonts | dmenu -i -p "Select uncode" | awk '{print $1}' )
echo $chosen | xclip -selection "clipboard" && notify-send $chosen "Copied!" -t 5000

