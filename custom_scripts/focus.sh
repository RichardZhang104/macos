#!/bin/bash


ID=$(yabai -m query --windows --window | jq '.id')

if [ -z $ID ]; then
    yabai -m window --focus last

    ID=$(yabai -m query --windows --window | jq '.id')

    if [ -z $ID ]; then
	yabai -m window --focus $(yabai -m query --windows --space | jq "map(select( .\"is-hidden\" == false and .\"is-minimized\" == false)) | .[0].id")
    fi
    
fi
