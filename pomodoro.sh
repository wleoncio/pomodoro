#!/bin/bash

# Script execution =============================================================

## Retrieving functions and parent directory -----------------------------------
scriptDir=$(dirname -- "$(readlink -f -- "$BASH_SOURCE")")
source "$scriptDir"/fun/pomodoroTime.sh
source "$scriptDir"/fun/shortBreakTime.sh
source "$scriptDir"/fun/longBreakTime.sh

## Starting pomodoros ----------------------------------------------------------
echo "Starting 4-pomodoro set"
echo $(date +"%T") "Starting 1st pomodoro"
pomodoroTime 1
echo $(date +"%T") "Taking a short break"
shortBreakTime
echo $(date +"%T") "Starting 2nd pomodoro"
pomodoroTime 2
echo $(date +"%T") "Taking a short break"
shortBreakTime
echo $(date +"%T") "Starting 3rd pomodoro"
pomodoroTime 3
echo $(date +"%T") "Taking a short break"
shortBreakTime
echo $(date +"%T") "Starting 4th pomodoro"
pomodoroTime 4
echo $(date +"%T") "Taking a long break"
longBreakTime
