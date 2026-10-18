-------------------------
-- LOOK AND FEEL (VIBRANT THOR THEME)
-------------------------
hl.config({
	general = {
		gaps_in = 6,
		gaps_out = 12,
		border_size = 2,
		col = {
			active_border = {
				colors = { "0xFFFFD700", "0xFF00F0FF", "0xFF1A365D", "0xFF9B51E0" }, -- Asgard Gold, Lightning Cyan, Thunder Blue, Bifrost Violet
				angle = 45,
			},
			inactive_border = "0xFF101926", -- Dark storm steel
		},
		layout = "dwindle",
	},
	decoration = {
		rounding = 12,
		active_opacity = 1.0,
		inactive_opacity = 0.94,
		dim_inactive = true,
		dim_strength = 0.08,
		blur = {
			enabled = true,
			size = 6,
			passes = 3,
			vibrancy = 0.25,
		},
		shadow = {
			enabled = true,
			range = 24,
			render_power = 3,
			color = "0x8800E5FF", -- Electric lightning aura on active window
			color_inactive = "0x44000000",
		},
	},
	input = {
		kb_layout = "us",
		follow_mouse = 1,
		touchpad = {
			natural_scroll = false,
		},
	},
})
