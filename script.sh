#!/bin/bash

###############
#Firefox
###############
firefox() {
    echo "running firefox"
    SECONDS=0

    wmctrl -a "Mozilla Firefox"
    sleep 2m
    ## click on first tab
    xdotool mousemove 110 80 click 1
    sleep 2m

    ## click on 2nd tab
    xdotool mousemove 330 80 click 1
    sleep 2m

    ## click on 3rd tab
    xdotool mousemove 550 80 click 1
    sleep 2m

    ## click on 4th tab
    xdotool mousemove 770 80 click 1
    sleep 2m
    #scroll
    xdotool mousemove 550 345 click 1
    xdotool click --delay 3000 --repeat 5 5 ##scroll down
    xdotool click --delay 3000 --repeat 5 4 ##scroll up

    ## click on 5th tab
    xdotool mousemove 1005 80 click 1
    sleep 2m
    printf "firefox ran for $SECONDS seconds\n\n"
}


###############
#Skype
###############
skype() {
    echo "running skype"
    SECONDS=0

    # move skype to next window
    wmctrl -r "Skype" -t 1
    sleep 1m
    wmctrl -a "Skype"
    sleep 2m
    ### maximize window size
    skype_size=$(xdotool search --onlyvisible --name skype)
    # echo "${skype_size}"
    xdotool windowsize ${skype_size} 1366 768
    sleep 1m
    ### click on notifications
    xdotool mousemove 283 270 click 1
    sleep 2m
    ### click on contacts
    xdotool mousemove 198 270 click 1
    sleep 2m
    ### click on calls
    xdotool mousemove 120 270 click 1
    sleep 2m
    ### click on chats
    xdotool mousemove 41 270 click 1
    sleep 2m

    printf "skype ran for $SECONDS seconds\n\n"
}

###############
#switch workspace
###############
swtich_workspace(){
    SECONDS=0
    wmctrl -s $1
    sleep 2m
    printf "switched workspace in $SECONDS seconds\n\n"
}

###############
#VSCODE
###############
vscode(){
    echo "running vscode"
    SECONDS=0

    #open vscode and click opened tabs
    wmctrl -a "Visual Studio Code"
    sleep 2m

    ## cycle through opened tabs
    xdotool mousemove 285 100 click 1
    sleep 1m
    xdotool mousemove 285 300 click 1
    xdotool click --delay 5000 --repeat 6 5 ##scroll down
    xdotool click --delay 5000 --repeat 6 4 ##scroll up

    xdotool mousemove 430 100 click 1
    sleep 1m
    xdotool mousemove 430 300 click 1
    xdotool click --delay 5000 --repeat 6 5 ##scroll down
    xdotool click --delay 5000 --repeat 6 4 ##scroll up

    xdotool mousemove 570 100 click 1
    sleep 1m
    xdotool mousemove 570 300 click 1
    xdotool click --delay 5000 --repeat 6 5 ##scroll down
    xdotool click --delay 5000 --repeat 6 4 ##scroll up

    xdotool mousemove 690 100 click 1
    sleep 1m
    xdotool mousemove 690 300 click 1
    xdotool click --delay 6000 --repeat 6 5 ##scroll down
    xdotool click --delay 6000 --repeat 6 4 ##scroll up


    xdotool mousemove 850 100 click 1
    sleep 2m
    #open split editor
    xdotool mousemove 1321 104 click 1
    sleep 2m
    #close split editor
    xdotool key ctrl+w
    sleep 2m

    xdotool mousemove 1030 100 click 1
    sleep 2m
    #open split editor
    xdotool mousemove 1321 104 click 1
    sleep 2m
    #close split editor
    xdotool key ctrl+w
    sleep 2m

    printf "vscode ran for $SECONDS seconds\n\n"
}


###############
#terminal
###############
terminal(){
    wmctrl -a naad@linux: ~/scripts
    sleep 1m
}

###############
#connect wifi
###############
wifi(){
    xdotool mousemove 1242 11 click 1
    sleep 1
    xdotool key Down
    sleep 1
    xdotool key Down
    sleep 1
    xdotool key Down
    sleep 1
    xdotool key Return
    sleep 1
    xdotool key Down
    sleep 1
    xdotool key Down
    sleep 1
    xdotool key Return
    sleep 1
}

# run cycle1
echo -e "\t\trunning ........ cycle 1\n"
firefox                         ## 13 mins
wifi                            ## off wifi
skype                           ## 12 mins
swtich_workspace 0              ## 2  mins
vscode                          ## 22 mins
terminal                        ## 1min
                  
# run cycle2
echo -e "\t\trunning ........ cycle 2\n"
firefox
vscode
terminal

## run cycle3
echo -e "\t\trunning ........ cycle 3\n"
firefox
skype
swtich_workspace 0
terminal


# run cycle4
echo -e "\t\trunning ........ cycle 4\n"                       
skype                           
swtich_workspace 0              
vscode
terminal                          
                  
# run cycle5
echo -e "\t\trunning ........ cycle 5\n"
firefox
vscode
terminal

## run cycle6
echo -e "\t\trunning ........ cycle 6\n"
firefox
skype
swtich_workspace 0
vscode
terminal

## connect wifi at last
wifi 
terminal

echo -e "\n\n\t\t total session completed\n\n"
