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

### get running windows
```
wmctrl -l
```

### get running desktops
```
wmctrl -d
```

### get mouse location
```
xdotool getmouselocation
```
