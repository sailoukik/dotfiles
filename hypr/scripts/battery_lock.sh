#!/usr/bin/env bash
# Hyprlock Battery Status Widget - Thor Theme

BAT="/sys/class/power_supply/BAT0"
if [ ! -d "$BAT" ]; then
    echo "⚡ AC Power"
    exit 0
fi

CAP=$(cat "$BAT/capacity" 2>/dev/null || echo "100")
STATUS=$(cat "$BAT/status" 2>/dev/null || echo "Unknown")

if [ "$STATUS" = "Charging" ]; then
    echo "⚡ $CAP% (Mjölnir Surge)"
elif [ "$STATUS" = "Full" ]; then
    echo "⚡ 100% (Empowered)"
else
    if [ "$CAP" -ge 80 ]; then
        ICON="󰁹"
    elif [ "$CAP" -ge 60 ]; then
        ICON="󰂀"
    elif [ "$CAP" -ge 40 ]; then
        ICON="󰁾"
    elif [ "$CAP" -ge 20 ]; then
        ICON="󰁼"
    else
        ICON="󰁺"
    fi
    echo "$ICON $CAP%"
fi
