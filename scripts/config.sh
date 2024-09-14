#!/bin/bash

res=$1

if [[ "$res" = 1080 || "$res" = 768 ]] ; then
        echo "English..."
        cd $HOME/Documents/.arch/
        git pull origin main
        cd
        mkdir -p $HOME/.config

        cp -rf $HOME/Documents/.arch/apps/* $HOME/.config/
        cp -f $HOME/Documents/.arch/apps/.bashrc $HOME/

        sh $HOME/Documents/.arch/scripts/resolution $res
else
    echo "Don't forget to add resolution, 1080 or 768 are available rn..."
    exit
fi
