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
