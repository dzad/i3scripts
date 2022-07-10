#!/bin/bash

choice=$(printf "%s\n%s\n%s" "Exit" "Reboot" "Shutdown" | dmenu -i)

[ $choice = "Exit" ] && eval i3-msg exit
[ $choice = "Reboot" ] && eval reboot
[ $choice = "Shutdown" ] && eval poweroff
