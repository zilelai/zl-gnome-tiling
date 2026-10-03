K=org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/
gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>F4', '<Super>q']"
gsettings get org.gnome.desktop.wm.keybindings close
gsettings get $K binding
