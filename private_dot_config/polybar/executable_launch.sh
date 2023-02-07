#!/bin/sh

killall -q polybar

polybar laptop &

if xrandr -q | grep 'DP-1 connected'; then
	polybar external &
fi
