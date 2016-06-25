#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

osascript <<EOF
tell application "Finder"
set desktop picture to POSIX file "$DIR/pwny.jpg"
end tell
EOF
