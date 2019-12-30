#!/bin/bash

# Storing functions for pomodoro.sh ============================================

## Function to execute short break ---------------------------------------------
shortBreakTime () {
	icon="$scriptDir"/img/mug.png
	soundStart=/usr/share/sounds/freedesktop/stereo/complete.oga
	soundEnd=/usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
	timeStart=$(date +"%T")
	timeEnd=$(date -d "+5 minutes" +"%T")
	notify-send "Short Break Start" "Come back at "$timeEnd"" -u critical -a 'Pomodoro' -i "$icon"
	paplay "$soundStart"
	sleep 10
	xtrlock -f
	sleep 285
	pkill xtrlock
	notify-send "Short Break Over" "Manually start your next pomodoro" -u critical -a 'Pomodoro' -i "$icon"
	paplay "$soundEnd"  # lasts for 5 seconds
}
