#!/bin/bash
watch_folder=/home/shobhit/Downloads/Torrents/
cd $watch_folder
[[ "$1" =~ xt=urn:btih:([^&/]+) ]] || exit;
echo "d10:magnet-uri${#1}:${1}e" > "meta-${BASH_REMATCH[1]}.torrent"
