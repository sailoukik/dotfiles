#!/usr/bin/env bash
# ⚡ Thor Lightning Screen Strobe
# Briefly applies the lightning flash shader for ~60ms

SHADER_DIR="$HOME/.config/hypr/shaders"
FLASH_SHADER="$SHADER_DIR/lightning_flash.frag"

# Check if an existing shader was active
CURRENT=$(hyprctl getoption decoration:screen_shader 2>/dev/null | grep "str:" | awk '{print $2}')

# Flash on
hyprctl eval "hl.config({ decoration = { screen_shader = '$FLASH_SHADER' } })" >/dev/null 2>&1

# Brief thunder pulse duration
sleep 0.06

# Restore previous state
if [ -n "$CURRENT" ] && [ "$CURRENT" != "$FLASH_SHADER" ]; then
    hyprctl eval "hl.config({ decoration = { screen_shader = '$CURRENT' } })" >/dev/null 2>&1
else
    hyprctl eval "hl.config({ decoration = { screen_shader = '' } })" >/dev/null 2>&1
fi
