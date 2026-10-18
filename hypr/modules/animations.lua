-------------------------
-- ANIMATIONS (VIBRANT THOR THEME)
-------------------------

-- ⚡ Thor Curves: Thunder strike spring & bouncy Bifrost bezier
hl.curve("thor_spring", { type = "spring", mass = 1.0, stiffness = 850.0, dampening = 26.0 })
hl.curve("thor_spring_fast", { type = "spring", mass = 1.0, stiffness = 1200.0, dampening = 30.0 })
hl.curve("thor_bezier", { type = "bezier", points = { {0.25, 0.1}, {0.25, 1.0} } })
hl.curve("thor_bezier_smooth", { type = "bezier", points = { {0.42, 0.0}, {0.58, 1.0} } })
hl.curve("bifrost_overshoot", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.08} } })
hl.curve("linear", { type = "bezier", points = { {0.0, 0.0}, {1.0, 1.0} } })

-- Global animation fallback
hl.animation({ leaf = "global", enabled = true, speed = 5, bezier = "thor_bezier" })

-- Windows: Lightning-fast popin with hammer-strike spring settle
hl.animation({ leaf = "windows", enabled = true, speed = 5, spring = "thor_spring", style = "popin 85%" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5, bezier = "bifrost_overshoot", style = "popin 85%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4, spring = "thor_spring", style = "popin 85%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, spring = "thor_spring" })

-- Layers (Rofi, Notifications, Widgets): Snappy pop-in with smooth exit
hl.animation({ leaf = "layers", enabled = true, speed = 4, bezier = "bifrost_overshoot", style = "popin 85%" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "bifrost_overshoot", style = "popin 85%" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3, bezier = "thor_bezier", style = "popin 85%" })

-- Workspaces: Fluid slidefade across dimensions
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "thor_bezier_smooth", style = "slidefade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 5, bezier = "thor_bezier", style = "slidefade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5, bezier = "thor_bezier", style = "slidefade" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 5, bezier = "bifrost_overshoot", style = "slidefadevert" })

-- Fades, Dimming & Shadow Transitions
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4, bezier = "thor_bezier" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 4, bezier = "thor_bezier" })
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 4, bezier = "thor_bezier" })
hl.animation({ leaf = "fadeShadow", enabled = true, speed = 5, bezier = "thor_bezier" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 4, bezier = "thor_bezier" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 3, bezier = "thor_bezier" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 3, bezier = "thor_bezier" })

-- Rotating Electric Border
hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "thor_bezier" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 20, bezier = "linear", style = "loop" })
