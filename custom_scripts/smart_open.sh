#!/bin/bash

# The application name is passed as $1
# $ID is id of first non-hidden window of that app (null if none)
# If none: run open -a $1
# Otherwise: Use yabai to focus the first window


ID=$(yabai -m query --windows | jq "map(select(.\"is-hidden\" == false and .app == \"$1\")) | .[0].id" )

if [ null == $ID ]
then
   open -a "$1"
else
   yabai -m window --focus $ID
fi
