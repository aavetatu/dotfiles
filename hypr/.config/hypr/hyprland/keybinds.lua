local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local vars = require("hyprland.variables")

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(vars.terminal))
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(
	mainMod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)
hl.bind(mainMod .. " + SHIFT + L ", hl.dsp.exec_cmd("systemctl suspend"))

hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(vars.fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(vars.menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + SPACE", hl.dsp.layout("togglesplit")) -- dwindle only

-- Open custom programs
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(vars.browser))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(vars.discord))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("keepassxc"))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("pavucontrol"))

-- Move focus with mainMod + HJKL
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Switch workspaces with mainMod + NEIO
-- Move active window to a workspace with MainMod + SHIFT + NEIO
hl.bind(mainMod .. " + N", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + E", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + I", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + I", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + O", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + O", hl.dsp.window.move({ workspace = 4 }))

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
