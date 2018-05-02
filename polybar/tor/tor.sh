
#!/bin/sh

#The icon that would change color
icon=""
icon_disable=""
if pgrep -x "tor" > /dev/null
then
	echo "%{F#00AF02}$icon TOR ENABLED " #Green
else
	echo "%{F#65737E}$icon_disable TOR DISABLED" #Gray
fi
