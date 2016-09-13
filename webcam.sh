#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

imagesnap $DIR/webcam.jpg
sleep $(( ( RANDOM % 100 )  + 30 ))

osascript <<EOF
tell application "System Events"
    set desktopCount to count of desktops
    repeat with desktopNumber from 1 to desktopCount
        tell desktop desktopNumber
            set picture to "$DIR/webcam.jpg"
        end tell
    end repeat
end tell
EOF
