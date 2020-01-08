#!/bin/bash

# Storing functions for pomodoro.sh ============================================

## Function to execute long break ----------------------------------------------
longBreakTime () {
	icon="$scriptDir"/img/party.png
	timeStart=$(date +"%T")
	timeEnd=$(date -d "+15 minutes" +"%T")
	soundStart=/usr/share/sounds/freedesktop/stereo/complete.oga
	soundEnd=/usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
	notify-send "Long Break Start" "Come back at "$timeEnd"" -u critical -a 'Pomodoro' -i "$icon"
	paplay "$soundStart"
	sleep 15
	xtrlock -f
	sleep 280
	pkill xtrlock
	sleep 600
	notify-send "Long Break Over" "Start a new set" -u critical -a 'Pomodoro' -i "$icon"
	paplay "$soundEnd"
}
