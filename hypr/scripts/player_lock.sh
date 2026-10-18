#!/usr/bin/env bash
# Hyprlock Media Player Widget - Thor Theme

if ! command -v playerctl &>/dev/null; then
    echo "⚡ Realm of Asgard • Valhalla Peace"
    exit 0
fi

STATUS=$(playerctl status 2>/dev/null)
if [ "$STATUS" = "Playing" ]; then
    TITLE=$(playerctl metadata --format '{{title}}' 2>/dev/null | cut -c 1-32)
    ARTIST=$(playerctl metadata --format '{{artist}}' 2>/dev/null | cut -c 1-22)
    if [ -n "$ARTIST" ] && [ -n "$TITLE" ]; then
        echo "󰎆 $TITLE • $ARTIST (▶)"
    elif [ -n "$TITLE" ]; then
        echo "󰎆 $TITLE (▶)"
    else
        echo "󰎆 Playing Media (▶)"
    fi
elif [ "$STATUS" = "Paused" ]; then
    TITLE=$(playerctl metadata --format '{{title}}' 2>/dev/null | cut -c 1-32)
    if [ -n "$TITLE" ]; then
        echo "󰏤 $TITLE (Paused)"
    else
        echo "󰏤 Paused"
    fi
else
    echo "ᛋ Realm of Asgard • Thunder at Rest"
fi
