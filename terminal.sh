K=org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/
gsettings set $K binding '<Shift>Return'
gsettings set $K command '/usr/bin/gnome-terminal'
gsettings get $K binding
