#!/usr/bin/env bash
# Toggle Thor atmospheric screen shader in Hyprland

SHADER_PATH="$HOME/.config/hypr/shaders/thor_vibrance.frag"
CURRENT=$(hyprctl getoption decoration:screen_shader | grep "str:" | awk '{print $2}')

if [ -n "$CURRENT" ]; then
    hyprctl eval 'hl.config({ decoration = { screen_shader = "" } })'
    notify-send -a "Thor Hyprland" "⚡ Screen Shader" "Disabled atmospheric shader" -i video-display
else
    hyprctl eval 'hl.config({ decoration = { screen_shader = os.getenv("HOME") .. "/.config/hypr/shaders/thor_vibrance.frag" } })'
    notify-send -a "Thor Hyprland" "⚡ Screen Shader" "Enabled Thor storm vibrance" -i video-display
fi
