#!/usr/bin/env python3
import subprocess
import sys
from pathlib import Path

WALLPAPERS = {
    "1": "/home/zilelai/Downloads/wallpaper1.jpg",
    "2": "/home/zilelai/Downloads/wallpaper2.jpg",
    "3": "/home/zilelai/Downloads/wallpaper3.jpeg",
    "4": "/home/zilelai/Downloads/wallpaper4.jpg"
}

SCHEMA = "org.gnome.desktop.background"


def set_gsetting(key, value):
    subprocess.run(["gsettings", "set", SCHEMA, key, value], check=True)


def main():
    if len(sys.argv) < 2:
        print(f"Usage: {sys.argv[0]} <{'|'.join(WALLPAPERS)}>", file=sys.stderr)
        sys.exit(1)

    path = WALLPAPERS.get(sys.argv[1])
    if path is None:
        print(f"Unknown wallpaper: {sys.argv[1]}", file=sys.stderr)
        sys.exit(1)

    uri = Path(path).as_uri()
    
    set_gsetting("picture-uri", uri)
    set_gsetting("picture-uri-dark", uri)
    set_gsetting("picture-options", "zoom")


if __name__ == "__main__":
    main()
