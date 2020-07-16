
###############
#Firefox (7 mins)
###############
firefox() {
    echo "running firefox"
    wmctrl -a "Mozilla Firefox"
    sleep 2
    ### click on home
    xdotool mousemove 117 119 click 1
    sleep 2
    #scroll
    xdotool mousemove 1223 471 click 1
    xdotool click --delay 6000 --repeat 5 5 ##scroll down
    xdotool click --delay 6000 --repeat 5 4 ##scroll up
    ### click on refresh
    xdotool mousemove 82 119 click 1
    sleep 2
}


###############
#Skype (10 mins)
###############
skype() {
    echo "running skype"
    # move skype to next window
    wmctrl -r "Skype" -t 1
    wmctrl -a "Skype"
    sleep 1
    ### maximize window size
    skype_size=$(xdotool search --onlyvisible --name skype)
    # echo "${skype_size}"
    xdotool windowsize ${skype_size} 1366 768
    sleep 1
    ### click on notifications
    xdotool mousemove 283 210 click 1
    sleep 2
    ### click on contacts
    xdotool mousemove 198 210 click 1
    sleep 2
    ### click on calls
    xdotool mousemove 120 210 click 1
    sleep 2
    ### click on chats
    xdotool mousemove 41 210 click 1
    sleep 2
}

###############
#switch workspace (1 min)
###############
swtich_workspace(){
    echo "switch workspace"
    wmctrl -s $1
    sleep 1
}

###############
#VSCODE (20 mins)
###############
vscode(){
    echo "running vscode"
    #open vscode and click opened tabs
    wmctrl -a "Visual Studio Code"
    sleep 2
    ## cycle through open tabs
    xdotool mousemove 225 107 click 1
    sleep 2
    xdotool mousemove 330 107 click 1
    sleep 2
    xdotool mousemove 432 107 click 1
    sleep 2
    xdotool mousemove 600 107 click 1
    sleep 2
    #open split editor
    xdotool mousemove 1321 104 click 1
    sleep 2
    #close split editor
    xdotool mousemove 940 104 click 1
    sleep 2
    xdotool mousemove 774 107 click 1
    sleep 2
    #open split editor
    xdotool mousemove 1321 104 click 1
    sleep 2
    #close split editor
    xdotool mousemove 940 104 click 1
    sleep 2
}


###############
#terminal
###############
terminal(){
    wmctrl -a naad@linux: ~/scripts
    echo "completed"
}

## run script
sleep 1


firefox
skype
swtich_workspace 0
vscode


firefox
skype
swtich_workspace 0
vscode

terminal
