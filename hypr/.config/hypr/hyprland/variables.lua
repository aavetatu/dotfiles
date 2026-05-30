---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
return {
	terminal = "kitty",
	fileManager = "dolphin",
	menu = "hyprlauncher",
	browser = "zen-browser",
	discord = "equibop",
},
	hl.config({
		general = {
			gaps_in = 2,
			gaps_out = 2,

			border_size = 2,

			col = {
				active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
				inactive_border = "rgba(595959aa)",
			},
			layout = "dwindle",
		},

		decoration = {
			rounding = 5,
			rounding_power = 2,
			shadow = {
				enabled = false,
			},
			blur = {
				enabled = false,
			},
		},
		animations = {
			enabled = false,
		},
	}),
	hl.config({
		dwindle = {
			preserve_split = true,
		},
	})
