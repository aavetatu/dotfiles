------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
	output = "DP-1",
	mode = "preferred",
	position = "auto",
	scale = "auto",
})

hl.monitor({
	output = "DP-3",
	mode = "preferred",
	position = "-1080x-550",
	transform = 1,
	scale = "auto",
})

hl.monitor({
	output = "HDMI-A-2",
	mode = "preferred",
	position = "auto",
	scale = "auto",
})
