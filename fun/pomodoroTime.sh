#!/bin/bash

# Storing functions for pomodoro.sh ============================================

## Function to execute pomodoro (work time) ------------------------------------
pomodoroTime () {
	read -n1 -r -p "  Press any key to start pomodoro number "$1""
	icon="$scriptDir"/img/dart.png
	sound=/usr/share/sounds/freedesktop/stereo/window-attention.oga
	timeStart=$(date +"%T")
	timeEnd=$(date -d "+25 minutes" +"%T")
	echo ""$timeStart" OK. Started. Ending at "$timeEnd""
	notify-send "P"$1": Time to focus for 25 minutes ("$timeStart" to "$timeEnd")" -u normal -a 'Pomodoro' -i "$icon"
	paplay "$sound"
	sleep 600
	time=$(date +"%T")
	notify-send "P"$1": About half way there" "15 minutes to break at "$timeEnd"" -u low -a 'Pomodoro' -i "$icon"
	sleep 600
	time=$(date +"%T")
	notify-send "P"$1": Final stretch" "Only 5 minutes to break at "$timeEnd"" -u low -a 'Pomodoro' -i "$icon"
	sleep 300
}
