#!/bin/bash
IFS='
'
for x in `curl https://raw.githubusercontent.com/unixfox/aur/master/pkgs`; do
   pkg_name=$(echo $x | cut -c 3-)
   aurto add $pkg_name
done
