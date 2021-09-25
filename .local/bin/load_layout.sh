#! /bin/bash

ws_prefix='^set $ws'
ws_postfix=$1
ws_pattern="${ws_prefix}${ws_postfix} "
ws_name=$(grep "$ws_pattern" ~/.config/i3/config | awk -v FS="\"" '{print $2}')
echo $ws_name
i3-msg "workspace $ws_name; append_layout ~/.config/i3/ws_config/ws_$1.json"