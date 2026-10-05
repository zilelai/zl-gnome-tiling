#ZL-GNOME-TILING by ZL PROJECTS/ZLLAI26
#THIS PROJECT/REPO IS LICENSED WITH GPL 3.0
#CODES WERE EXPLAINED SO THAT THE USER WOULD UNDERSTAND WHAT ARE THEY DOING

# Stores the long schema path in a shortcut variable to keep the code clean and readable
K=org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/
#Sets the keybind to Shift Return to open a terminal
gsettings set $K binding '<Shift>Return'
#Gets the keybind when the user presses the keybind and opens up terminal
gsettings set $K command '/usr/bin/gnome-terminal'
#Gets the map of the binding
gsettings get $K binding
