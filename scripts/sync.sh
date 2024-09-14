#!/bin/bash

    echo "English..."
    cd $HOME/Documents/.arch/
    git pull origin main
    cd
    rm -r $HOME/Documents/.arch/apps/*
    # 
    # Bash
    cp -f $HOME/.bashrc $HOME/Documents/.arch/apps/
    # 
    # Alacritty
    cp -rf $HOME/.config/alacritty/ $HOME/Documents/.arch/apps/
    #
    # Dunst
    cp -rf $HOME/.config/dunst/ $HOME/Documents/.arch/apps/
    #
    # MPV
    cp -rf $HOME/.config/mpv/ $HOME/Documents/.arch/apps/
    #
    # Rofi
    cp -rf $HOME/.config/rofi/ $HOME/Documents/.arch/apps/
    #
    # Hyprland
    cp -rf $HOME/.config/hypr/ $HOME/Documents/.arch/apps/
    #
    # Waybar
    cp -rf $HOME/.config/waybar/ $HOME/Documents/.arch/apps/
    #
    # Swaylock
    # cp -rf $HOME/.config/swaylock $HOME/Documents/.arch/apps/
    #
    # Cava
    cp -rf $HOME/.config/cava $HOME/Documents/.arch/apps/
    # 
    cd $HOME/Documents/.arch/
    git add -A
    git commit -m "$1"
    git push origin main
