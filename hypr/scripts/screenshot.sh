#!/usr/bin/env bash
# Thor themed screenshot with lightning snap audio feedback

MODE="${1:-region}"
TARGET="${2:-clipboard}"
SOUND="$HOME/.config/hypr/sounds/electric_snap.wav"

if [ "$TARGET" = "clipboard" ]; then
    hyprshot -m "$MODE" --clipboard-only
else
    mkdir -p "$HOME/Pictures/Screenshots"
    hyprshot -m "$MODE" -o "$HOME/Pictures/Screenshots"
fi

if [ -f "$SOUND" ]; then
    pw-play "$SOUND" >/dev/null 2>&1 &
fi
