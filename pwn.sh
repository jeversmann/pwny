#!/bin/bash

line="* * * * * /Users/jeversmann/Documents/pwny.sh"
(crontab -l; echo "$line" ) | crontab -
