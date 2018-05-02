#!/bin/bash

function gen_workspaces()
{
    echo '1: Take Screenshot'
    echo '2: Take Screenshot Window'
    echo '3: Take Screenshot after 5 seconds'
}


SCREENSHOT_TYPE=$( (gen_workspaces)  | rofi -dmenu -p "Select Option:")

if [ x"1: Take Screenshot" = x"${SCREENSHOT_TYPE}" ]
then
    scrot    "$HOME/Pictures/Screenshot %Y-%m-%d %H-%M-%S %z.png" && notify-send "png screenshot taken"
elif [ x"2: Take Screenshot(JPG)" = x"${SCREENSHOT_TYPE}" ]
then
    scrot    "$HOME/Pictures/Screenshot %Y-%m-%d %H-%M-%S %z.jpg" && notify-send "jpg screenshot taken"
elif [ x"2: Take Screenshot Window" = x"${SCREENSHOT_TYPE}" ]
then
    scrot -s "$HOME/Pictures/Screenshot %Y-%m-%d %H-%M-%S %z.png" && notify-send "png screenshot of window taken"
elif [ x"1: Take Screenshot" = x"${SCREENSHOT_TYPE}" ]
then
    scrot    "$HOME/Pictures/Screenshot %Y-%m-%d %H-%M-%S %z.png" && notify-send "png screenshot taken"
elif [ x"1: Take Screenshot" = x"${SCREENSHOT_TYPE}" ]
then
    scrot    "$HOME/Pictures/Screenshot %Y-%m-%d %H-%M-%S %z.png" && notify-send "png screenshot taken"
fi
# Screenshots based on the "Print" key. Requires the "scrot" tool.
# With $mod:  Interactively select window or rectangle.
# With Shift: JPEG instead of PNG.
# With Ctrl:  Sleep 5 seconds before doing the screenshot.
#bindsym --release $mod+Shift+Print         exec --no-startup-id            scrot -s "$HOME/Pictures/Screenshot %Y-%m-%d %H-%M-%S %z.jpg" && notify-send "jpg screenshot of window taken"
#bindsym                Control+Print       exec --no-startup-id sleep 5 && scrot    "$HOME/Pictures/Screenshot %Y-%m-%d %H-%M-%S %z.png" && notify-send "png screenshot in 5s"
#bindsym                Control+Shift+Print exec --no-startup-id sleep 5 && scrot    "$HOME/Pictures/Screenshot %Y-%m-%d %H-%M-%S %z.jpg" && notify-send "jpg screenshot in 5s"
#bindsym --release $mod+Control+Print       exec --no-startup-id sleep 5 && scrot -s "$HOME/Pictures/Screenshot %Y-%m-%d %H-%M-%S %z.png" && notify-send "png screenshot of window in 5s"
#bindsym --release $mod+Control+Shift+Print exec --no-startup-id sleep 5 && scrot -s "$HOME/Pictures/Screenshot %Y-%m-%d %H-%M-%S %z.jpg" && notify-send "jpg screenshot of window in 5s"
