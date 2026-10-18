#!/usr/bin/env bash
# Hyprlock Network Status Widget - Thor Theme

SSID=$(nmcli -t -f active,ssid dev wifi 2>/dev/null | grep '^yes' | cut -d: -f2 | head -n1)
if [ -n "$SSID" ]; then
    # Truncate SSID if too long
    SSID_SHORT=$(echo "$SSID" | cut -c 1-18)
    echo "󰤨 $SSID_SHORT"
else
    ETH=$(nmcli -t -f device,type,state dev 2>/dev/null | grep ':ethernet:connected' | cut -d: -f1 | head -n1)
    if [ -n "$ETH" ]; then
        echo "󰈀 Ethernet"
    else
        echo "󰤮 Bifrost Offline"
    fi
fi
