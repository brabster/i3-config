#!/bin/bash

PWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo "CAPSLOCK->Ctrl"
setxkbmap -option ctrl:nocaps

I3_CONFIG=~/.config/i3/config
echo "Backing up $I3_CONFIG"
mv $I3_CONFIG $I3_CONFIG.bak

echo "Copying new i3 config"
cp $PWD/i3.config $I3_CONFIG

echo "$mod+Shift+r to reload..."
