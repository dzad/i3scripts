#!/bin/bash
layout=`setxkbmap -query | grep layout`
# if current layout is fr switch to ar
[[ $layout = "layout:     fr" ]] && setxkbmap ar
# else switch back to fr
[[ $layout = "layout:     ar"  ]] && setxkbmap fr && xmodmap -e "keycode 49 = c"
