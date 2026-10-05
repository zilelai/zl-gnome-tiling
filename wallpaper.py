"""
REMOVE THIS LINE AFTER CLONING THIS, AS MULTILINE COMMENTS CAN AFFECT ITS PERFORMANCE

ZL PROJECTS/ZLLAI26 - GNOME-TILING-WM
THIS PROJECT WILL BE LICENSED IN GPL 3.0
THIS IS MY GNOME-TILING-WM, WHILE MOST OF THE CONFIGS ARE PROVIDED HERE, OTHER DEPENDENCIES LIKE FORGE HAVE TO BE INSTALLED

UBUNTU WORKS BEST WITH THIS, WHILE OTHER WORKS AS FINE, IN MY OPINION, UBUNTU GNOME HAVE MORE EXTENSIONS ADDED TO IT'S OS, SO YOU CAN CUSTOMIZE IT'S BUILT-IN EXTENSIONS

CODE IS BEING EXPLAINED SO THE USER CAN KNOW WHAT ARE THEY DOING
"""


#Libraries

#!/usr/bin/env python3
import subprocess
import sys
from pathlib import Path

#The path of my wallpapers, written in dictionary form
WALLPAPERS = {
    "1": "/home/zilelai/Downloads/wallpaper1.jpg",
    "2": "/home/zilelai/Downloads/wallpaper2.jpg",
    "3": "/home/zilelai/Downloads/wallpaper3.jpeg",
    "4": "/home/zilelai/Downloads/wallpaper4.jpg"
}

#a schema that manages background
SCHEMA = "org.gnome.desktop.background"

#Where the computer changes the wallpaper
def set_gsetting(key, value):
    subprocess.run(["gsettings", "set", SCHEMA, key, value], check=True)

#Main loop
def main():
    #If the keybind isn't <Ctrl><Alt><Num> then it "outputs" print("Keybind does NOT EXIST!!!").
    #The output only appears when you do it manually, so when you do it in the background you won't see the output
    if len(sys.argv) < 2:
        print("Keybind does NOT EXIST!!!")
        sys.exit(1)

    

    #Gets the wallpaper path
    path = WALLPAPERS.get(sys.argv[1])

    #If path is no where to be found, then it "outputs" print("Unknown Wallpaper")
    #The output only appears when you do it manually, so when you do it in the background you won't see the output
    if path is None:
        print("Unknown Wallpaper")
        sys.exit(1)

    
    #Converts a path name to URI format so the Linux desktop system understands
    uri = Path(path).as_uri()

    #Sets the wallpaper you wanted as your main wallpaper and set the image to zoom
    set_gsetting("picture-uri", uri)
    set_gsetting("picture-uri-dark", uri)
    set_gsetting("picture-options", "zoom")


#We defined a main() loop, so this dunder block sets the running code to be in def main() and not other functions
if __name__ == "__main__":
    main()
