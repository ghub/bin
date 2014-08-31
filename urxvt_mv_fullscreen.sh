#!/bin/sh -e

urxvt_is_running()
{
    wmctrl -x -l | grep urxvt >/dev/null 2>&1
}

while ! urxvt_is_running; do
    sleep 0.1
done

cmd="wmctrl -x -r urxvt"
$cmd -e 0,1366,-1,-1,-1
$cmd -b toggle,fullscreen
