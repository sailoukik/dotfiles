-------------------------
-- LOOK AND FEEL (THOR THEME)
-------------------------
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 2,
		col = {
			active_border = {
				colors = { "0xFFFFD700", "0xFF00E5FF", "0xFF1E3A5F" }, -- Asgard Gold, Lightning Cyan, Thunder Blue
				angle = 45,
			},
			inactive_border = "0xFF0F0F1A",
		},
		layout = "dwindle",
	},
	decoration = {
		rounding = 10,
		blur = {
			enabled = true,
			size = 5,
			passes = 2,
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
