#!/bin/bash
set -o errexit

HISTORY="$HOME/.drun_history"
test -f "$HISTORY" || touch "$HISTORY"
INPUT=$(dmenu $@ < "$HISTORY")
test -n "$INPUT"

# aliases
case "$INPUT" in
    wireshark)
        CMD="wireshark-qt" ;;
    google)
        CMD="xdg-open http://google.com" ;;
    chromium-work)
        CMD="chromium --user-data-dir=$HOME/.config/chromium_work" ;;
    ranger)
        CMD="kitty sh -c 'ranger'" ;;
    *)
        CMD="$INPUT" ;;
esac

# test if CMD exist in $PATH
hash $(echo "$CMD" | cut -f1 -d ' ')

# write input to history
if ! grep -q "$INPUT" "$HISTORY"; then
    echo "$INPUT" >> "$HISTORY"
    sort "$HISTORY" -o "$HISTORY" &
fi

exec $CMD

