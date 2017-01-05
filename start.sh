#!/bin/bash
DATE="$(date +%s)"
if pgrep -x "aurbs" > /dev/null
then
    echo "running" > /dev/null
else
    cp /etc/aurbs.yml.demo /etc/aurbs.yml
    curl -sS https://raw.githubusercontent.com/unixfox/aur/master/pkgs >> /etc/aurbs.yml
    aurbs > /root/aurbs/session_"$DATE".txt
fi
