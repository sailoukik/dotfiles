#!/usr/bin/env bash
# Thor lock screen with Mjolnir strike audio cue

SOUND="$HOME/.config/hypr/sounds/mjolnir_strike.wav"
if [ -f "$SOUND" ]; then
    pw-play "$SOUND" >/dev/null 2>&1 &
fi

hyprlock
