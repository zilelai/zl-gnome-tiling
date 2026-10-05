#ZL-GNOME-TILING by ZL PROJECTS/ZLLAI26
#THIS PROJECT/REPO IS LICENSED WITH GPL 3.0
#CODES WERE EXPLAINED SO THAT THE USER WOULD UNDERSTAND WHAT ARE THEY DOING


#!/bin/bash

# Clears GNOME's default dock application shortcuts to prevent keybinding conflicts
for n in 1 2 3 4 5 6 7 8 9; do
  gsettings set org.gnome.shell.keybindings switch-to-application-$n "[]"
done

#If I pressed from 1 to 9 along with <Super><Alt> it would change the workspace
#But if I pressed from 1 to 9 along with <Ctrl><Super><Alt> it would change the workspace along dragging the focused window to that workspace
for n in 1 2 3 4 5 6 7 8 9; do
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$n "['<Super><Alt>$n']"
  gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-$n "['<Ctrl><Super><Alt>$n']"
done

#Maps the 10th workspace to 0
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Super><Alt>0']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Ctrl><Super><Alt>0']"

# Disable Mutter's automatic dynamic workspace creation to enforce a fixed count.
gsettings set org.gnome.mutter dynamic-workspaces false
#Sets total workspaces to 10
gsettings set org.gnome.desktop.wm.preferences num-workspaces 10
