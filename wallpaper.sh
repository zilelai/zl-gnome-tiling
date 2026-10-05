#ZL-GNOME-TILING by ZL PROJECTS/ZLLAI26
#THIS PROJECT/REPO IS LICENSED WITH GPL 3.0
#CODES WERE EXPLAINED SO THAT THE USER WOULD UNDERSTAND WHAT ARE THEY DOING

#!/bin/bash

# Stores the long schema path in a shortcut variable to keep the code clean and readable
BASE=/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings
#Gets the python file so it could change the wallpaper
SCRIPT=/home/zilelai/wallpaper.py

# Initializes an empty text string to build up our master list of custom shortcuts (variable init)
list=""

#If I press the keybind from 1 to 4 along with Control Alt, it would change the wallpaper through the python file
for n in 1 2 3 4; do
  p="$BASE/wallpaper$n/"
  s="org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$p"
  gsettings set "$s" name "Wallpaper $n"
  gsettings set "$s" command "python3 $SCRIPT $n"
  gsettings set "$s" binding "<Control><Alt>$n"
  list="$list'$p',"
done

# Applies the cleaned list variable to GNOME's master custom-keybindings setting
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[${list%,}]"
