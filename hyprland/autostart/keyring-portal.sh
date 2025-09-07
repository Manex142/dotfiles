#!/usr/bin/env bash

# Inicia GNOME Keyring para secrets
eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets)
export SSH_AUTH_SOCK
export DBUS_SESSION_BUS_ADDRESS

# Inicia el portal (para que VS Code lo vea)
systemctl --user start xdg-desktop-portal
systemctl --user start xdg-desktop-portal-gnome
