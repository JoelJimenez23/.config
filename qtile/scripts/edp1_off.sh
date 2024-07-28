#!/bin/bash
picom --config /home/joel/./config/picom/picom.conf &

#xrandr -s 1920x1080

if xrandr | grep -q "HDMI-A-0 connected"; then
		xrandr --output eDP --mode 1920x1080
		xrandr --output eDP --off
		xbindkeys &
		remap &
	else
    echo "El monitor eDP no está conectado. Ejecutar acción 2 aquí..."
		xbindkeys &
		remap &
fi
