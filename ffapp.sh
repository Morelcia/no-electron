#!/bin/sh
# Made by tsberlatan on https://superuser.com/questions/1118101/use-multiple-firefox-wm-classes-in-same-profile
# hacky but epic d-_-b
targetclass=$1
url=$2
titlegrep=$3
if [ "$#" -ne 3 ]
then
    echo "USAGE: $0 TARGETCLASS URL TITLEGREP" 1>&2
    exit 1
fi

firefox --ssb "$url" &

sleep 10

# Ensure only newlines split items in the upcoming for loop:
IFS='
'

for wid in `wmctrl -l -x | grep $titlegrep | awk '{ print \$1 }'`
do
    xprop -id $wid -f WM_CLASS 8s -set WM_CLASS $targetclass
    xprop -id $wid -f WM_NAME 8s -set WM_NAME $targetclass
    xprop -id $wid -f _NET_WM_NAME 8s -set _NET_WM_NAME $targetclass
done
