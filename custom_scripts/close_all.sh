#!/bin/bash

for id in $(yabai -m query --windows --space | jq '.[] | select(."is-hidden" == false and ."is-minimized" == false) | .id'); do
    yabai -m window --close $id
done