#!/bin/bash
BASE=/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings
SCRIPT=/home/zilelai/wallpaper.py

list=""
for n in 1 2 3 4; do
  p="$BASE/wallpaper$n/"
  s="org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$p"
  gsettings set "$s" name "Wallpaper $n"
  gsettings set "$s" command "python3 $SCRIPT $n"
  gsettings set "$s" binding "<Control><Alt>$n"
  list="$list'$p',"
done

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[${list%,}]"
