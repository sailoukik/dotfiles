#!/usr/bin/env bash
# ⚡ Thor Terminal Launcher
# Triggers lightning flash + thunder strike sound effect on Kitty spawn

SOUND="$HOME/.config/hypr/sounds/thunder_strike.wav"
FLASH_SCRIPT="$HOME/.config/hypr/scripts/thunder_flash.sh"

# 1. Play thunderstrike sound effect in background
if [ -f "$SOUND" ]; then
    pw-play "$SOUND" >/dev/null 2>&1 &
fi

# 2. Trigger screen lightning flash in background
if [ -f "$FLASH_SCRIPT" ]; then
    "$FLASH_SCRIPT" >/dev/null 2>&1 &
fi

# 3. Launch Kitty terminal
exec kitty "$@"
