-- SAFE BASE CONFIG FOR HYPRLAND 0.56+
local modules_dir = os.getenv("HOME") .. "/.config/hypr/modules/"

-- Load Modules
dofile(modules_dir .. "monitors.lua")
dofile(modules_dir .. "autostart.lua")
dofile(modules_dir .. "look_and_feel.lua")
dofile(modules_dir .. "animations.lua")
dofile(modules_dir .. "keybinds.lua")

-- >>> Brain Shell Startup >>>
--dofile(os.getenv("HOME") .. "/.config/Brain_Shell/BrainShell-hyprland.lua")
-- <<< Brain Shell Startup <<<
