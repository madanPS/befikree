#!/bin/bash

#echo 'Workspace?'
#read workspace
#wmctrl -s $workspace!
#wmctrl -l
#wmctrl -d

## workpsace 0

sleep 1m

## open firefox
wmctrl -a "Mozilla Firefox"
sleep 2m
#scroll
xdotool click --delay 3000 --repeat 3 4
xdotool click --delay 3000 --repeat 3 5
#click refresh
#xdotool getmouselocation
xdotool mousemove 83 121 click 1
sleep 5m


## open vscode
wmctrl -a "Visual Studio Code"
sleep 3m
## click on splitter
xdotool mousemove 1321 104 click 1
sleep 2m




## switch workspace 1
wmctrl -s 1
sleep 1m

## activate skype
wmctrl -a "Skype"
sleep 2m
xdotool mousemove 831 333 click 1
xdotool mousemove 831 333 click 4
xdotool mousemove 831 333 click 4
xdotool mousemove 831 333 click 4
xdotool mousemove 831 333 click 5
xdotool mousemove 831 333 click 5
xdotool mousemove 831 333 click 5
sleep 2m



##switch to workpsace 0
wmctrl -s 0
sleep 2m

## active vscode
wmctrl -a "Visual Studio Code"
sleep 2m
xdotool mousemove 1321 104 click 1

## active terminal(name)
wmctrl -a naad@linux: ~/scripts
echo "completed"
