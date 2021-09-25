#! /bin/bash

intern=eDP1
extern=DP-1-1

xrandr --output "$extern" --off --output "$intern" --auto --primary

#xrandr --auto