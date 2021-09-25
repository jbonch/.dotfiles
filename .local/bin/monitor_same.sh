#! /bin/bash

intern=eDP1
extern=DP-1-1

xrandr --output "$extern" --mode 1920x1080 --output "$intern" --mode 1920x1080 --primary --same-as "$extern"
#xrandr --output "$extern" --auto --scale-from 1920x1080 --output "$intern" --auto --primary --same-as "$extern"
#xrandr --output DP-1-1 --auto --right-of eDP1