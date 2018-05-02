#!/bin/sh

TOR="pkexec systemctl start tor"
TOR_END="pkexec systemctl stop tor"


if pgrep -x "tor" > /dev/null
then
    echo "END"
	$TOR_END
else
    echo "START"
	$TOR
fi
