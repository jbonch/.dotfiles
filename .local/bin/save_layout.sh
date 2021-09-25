#! /bin/bash
i3_ws_path=~/.config/i3/ws_config/ws_$1.json
i3-save-tree --workspace $1 > $i3_ws_path  &&
tail -n +2 i3_ws_path | fgrep -v '// split' | sed 's|//||g' > i3_ws_path