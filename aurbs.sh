#!/bin/bash
DATE="$(date +%s)"
if pgrep -x "aurbs" > /dev/null
then
    echo "running" > /dev/null
else
    wget https://github.com/unixfox/aur/raw/master/aurbs.yml -O /etc/aurbs.yml
    curl -sS https://raw.githubusercontent.com/unixfox/aur/master/pkgs >> /etc/aurbs.yml
    aurbs > /var/log/aurbs/"$DATE".txt
    lftp "ftp://"FTP_USER":"FTP_PASSWORD"@"FTP_HOST"" -e "mirror -R -e /var/lib/aurbs / ; quit"
fi
