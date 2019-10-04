#!/bin/bash
pomodorotime () {
	read -n1 -r -p "  Press any key to start the pomodoro number "$1""
	icon=img/dart.png
	sound=/usr/share/sounds/freedesktop/stereo/window-attention.oga
	timeStart=$(date +"%T")
	echo "  "$timeStart" OK. Started"
	timeEnd=$(date -d "+25 minutes" +"%T")
	notify-send "P"$1": Time to focus for 25 minutes" ""$timeStart" to "$timeEnd"" -u normal -a 'Pomodoro' -i "$icon"
	paplay "$sound"
	sleep 600
	time=$(date +"%T")
	notify-send "P"$1": Almost half way there" "15 minutes to "$timeEnd"" -u low -a 'Pomodoro' -i "$icon"
	sleep 600
	time=$(date +"%T")
	notify-send "P"$1": Final stretch" "Only 5 minutes to break ("$timeEnd")" -u low -a 'Pomodoro' -i "$icon"
	sleep 300
}

shortbreaktime () {
	icon=img/mug.png
	soundStart=/usr/share/sounds/freedesktop/stereo/complete.oga
	soundEnd=/usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
	timeStart=$(date +"%T")
	timeEnd=$(date -d "+5 minutes" +"%T")
	notify-send "Short Break Time" "Come back at "$timeEnd". Remember to manually restart your next pomodoro" -u critical -a 'Pomodoro' -i "$icon"
	paplay "$soundStart"
	sleep 5
	xtrlock -f
	sleep 290
	pkill xtrlock
	paplay "$soundEnd"  # lasts for 5 seconds
}

longbreaktime () {
	icon=img/party.png
	timeStart=$(date +"%T")
	timeEnd=$(date -d "+30 minutes" +"%T")
	soundStart=/usr/share/sounds/freedesktop/stereo/complete.oga
	soundEnd=/usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
	notify-send "Long Break Time" "Come back at "$timeEnd"" -u critical -a 'Pomodoro' -i "$icon"
	paplay "$soundStart"
	sleep 5
	xtrlock -f
	sleep 290
	pkill xtrlock
	sleep 1500
	notify-send "Long Break Over" "Start a new set" -u critical -a 'Pomodoro' -i "$icon"
	paplay "$soundEnd"
}

echo "Starting 4-pomodoro set"
echo $(date +"%T") "Starting 1st pomodoro"
pomodorotime 1
echo $(date +"%T") "Taking a short break"
shortbreaktime
echo $(date +"%T") "Starting 2nd pomodoro"
pomodorotime 2
echo $(date +"%T") "Taking a short break"
shortbreaktime
echo $(date +"%T") "Starting 3rd pomodoro"
pomodorotime 3
echo $(date +"%T") "Taking a short break"
shortbreaktime
echo $(date +"%T") "Starting 4th pomodoro"
pomodorotime 4
echo $(date +"%T") "Taking a long break"
longbreaktime
# exit 0
