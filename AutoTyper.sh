#!/bin/bash

# Get the window ID for Mozilla Firefox (if multiple windows, you might want to adapt this part)
firefox_window=$(xdotool search --name "Mozilla Firefox" | head -n 1)

# Check if the window ID was found
if [ -z "$firefox_window" ]; then
    echo "Mozilla Firefox window not found."
    exit 1
fi

# Activate the Mozilla Firefox window
xdotool windowactivate "$firefox_window"

#Everythign above was chatgpt cause I didn't understand it
sleep 1

#uses short cut to focus on search bar
xdotool key ctrl+l
xdotool click 1

#waits to register search bar
sleep 1

#types into search bar
xdotool type "google.com"
xdotool key Return
