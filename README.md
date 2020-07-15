# befikree
> some bash scripts

## install
```
sudo apt update
sudo apt install wmctrl
sudo apt install xdotool
```

## run 
```
chmod +x script.sh
./script.sh
```

## some infos
wmctrl => using to switch between workspace and application <br />
xdotool => using for mouse events


## try in terminal

> get running windows
```
wmctrl -l
```

> activate window
```
wmctrl -a <window name>
```

> activate workspace
```
wmctrl -s <workspace number>
```

> get running desktops
```
wmctrl -d
```

> get mouse location
```
xdotool getmouselocation
```

> get XXX && YYY from above
```
xdotool mousemove XXX YYY click 1
xdotool mousemove XXX YYY click 2
xdotool mousemove XXX YYY click 4
xdotool mousemove XXX YYY click 5
```

> repeat 3 times at delay of 3 seconds to left click mouse
```
xdotool click --delay 3000 --repeat 3 1
```


