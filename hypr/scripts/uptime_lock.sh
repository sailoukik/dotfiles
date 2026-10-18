#!/usr/bin/env bash
# Hyprlock Uptime Widget - Thor Theme

UP=$(uptime -p 2>/dev/null | sed 's/up //' | sed 's/ hours\?/h/' | sed 's/ minutes\?/m/' | sed 's/,//')
if [ -z "$UP" ]; then
    UP="just now"
fi
echo "⏳ Asgard Vigil: $UP"
