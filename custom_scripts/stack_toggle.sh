#!/bin/bash

# If the layout of the current space is bsp, change it to stack.
# And vice versa.

if [ $(yabai -m query --spaces --space | jq ".type") == "\"bsp\"" ]; then
	yabai -m space --layout stack
else
	yabai -m space --layout bsp
fi