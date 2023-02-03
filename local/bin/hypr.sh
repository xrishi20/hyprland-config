#!/bin/sh

# Session
export LIBVA_DRIVER_NAME=nvidia
export XDG_SESSION_TYPE=wayland
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvdia
export LIBVA_DRIVER_NAME=nvidia
export XDG_SESSION_TYPE=wayland
export GBM_BACKEND=nvidia-drm
export WLR_NO_HARDWARE_CURSORS=1

# Wayland stuff
export MOZ_ENABLE_WAYLAND=1
export _JAVA_AWT_WM_NONREPARENTING=1
export XCURSOR_SIZE=24

export QT_QPA_PLATFORMTHEME=qt5ct

exec Hyprland
