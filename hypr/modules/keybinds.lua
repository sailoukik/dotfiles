-------------------------
-- KEYBINDS
-------------------------
local mainMod = "SUPER"

-- Standard Apps
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("brave"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("thunar"))

-- Window Management
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen()) -- True fullscreen (overlaps gaps/borders)
hl.bind(mainMod .. " + D", function()
	hl.dispatch(hl.dsp.window.fullscreen({ mode = "maximized" }))
end)

-- Workspaces (1 through 9, and 0 for workspace 10)
hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))
-- Move Window to Workspace (Super + Alt + [0-9]) - Using native Lua API
hl.bind("SUPER + ALT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind("SUPER + ALT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind("SUPER + ALT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind("SUPER + ALT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind("SUPER + ALT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind("SUPER + ALT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind("SUPER + ALT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind("SUPER + ALT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind("SUPER + ALT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind("SUPER + ALT + 0", hl.dsp.window.move({ workspace = 10 }))
--

-- Resize binds
hl.bind("SUPER + CTRL + right", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 40 0"))
hl.bind("SUPER + CTRL + left", hl.dsp.exec_cmd("hyprctl dispatch resizeactive -40 0"))
hl.bind("SUPER + CTRL + up", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 0 -40"))
hl.bind("SUPER + CTRL + down", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 0 40"))

-- Mouse binds
hl.bind(mainMod .. " + mouse:272", hl.dsp.exec_cmd("hyprctl dispatch movewindow"))
hl.bind(mainMod .. " + mouse:273", hl.dsp.exec_cmd("hyprctl dispatch resizewindow"))

-- Rofi bind
hl.bind("SUPER + R", hl.dsp.exec_cmd("rofi -show drun"))
-- Emoji picker (Super + .)
hl.bind("SUPER + period", hl.dsp.exec_cmd("rofimoji --action copy"))

-- Screenshots (with Thor electric audio snap)
hl.bind("Print", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.config/hypr/scripts/screenshot.sh region clipboard"))
hl.bind("SUPER + Print", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.config/hypr/scripts/screenshot.sh region file"))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.config/hypr/scripts/screenshot.sh output file"))

-- Lock Screen (Super + L, with Mjolnir strike audio cue)
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.config/hypr/scripts/lock.sh"))

-- Thor Screen Shader Toggle (Super + Shift + S)
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.config/hypr/scripts/toggle_shader.sh"))
