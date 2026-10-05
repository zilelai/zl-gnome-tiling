#ZL-GNOME-TILING by ZL PROJECTS/ZLLAI26
#THIS PROJECT/REPO IS LICENSED WITH GPL 3.0
#CODES WERE EXPLAINED SO THAT THE USER WOULD UNDERSTAND WHAT ARE THEY DOING


# Stores the long schema path in a shortcut variable called K to keep the code clean and reliable
K=org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/
#Sets the keybind to either Alt F4 or Super Q to close window
gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>F4', '<Super>q']"
#Gets the active keybinds to close the window
gsettings get org.gnome.desktop.wm.keybindings close
#Gets the map of the binding
gsettings get $K binding
