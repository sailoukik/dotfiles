-------------------------
-- AUTOSTART
-------------------------
hl.on("hyprland.start", function()
	-- Quickshell handles interactive Thor Mjolnir notifications
	hl.exec_cmd("swww-daemon")
	hl.exec_cmd("swww img ~/.config/hypr/wallpapers/thor_wallpaper.jpg") -- Sets the image
	hl.exec_cmd("hypridle -c $HOME/.local/src/Brain_Shell/src/config/hypridle.conf")
	hl.exec_cmd("quickshell -c $HOME/.local/src/Brain_Shell/.")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
