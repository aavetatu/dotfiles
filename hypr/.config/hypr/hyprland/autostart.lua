local vars = require("hyprland.variables")

hl.on("hyprland.start", function()
	hl.exec_cmd(vars.terminal)
	hl.exec_cmd("hypridle & hyprpaper & hyprsunset")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("waybar & swaync")
end)
