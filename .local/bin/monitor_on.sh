#! /bin/bash

intern=eDP1
extern=DP-1-1

xrandr --output "$extern" --auto --output "$intern" --auto --primary --left-of "$extern"
#xrandr --output DP-1-1 --auto --right-of eDP1