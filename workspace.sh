#!/bin/bash
for n in 1 2 3 4 5 6 7 8 9; do
  gsettings set org.gnome.shell.keybindings switch-to-application-$n "[]"
done

for n in 1 2 3 4 5 6 7 8 9; do
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$n "['<Super><Alt>$n']"
  gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-$n "['<Ctrl><Super><Alt>$n']"
done

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Super><Alt>0']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Ctrl><Super><Alt>0']"

gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 10
