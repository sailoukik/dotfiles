-------------------------
-- ANIMATIONS (THOR THEME)
-------------------------

-- ⚡ Thor Curves: Thunder strike spring & snappy bezier
hl.curve("thor_spring", { type = "spring", mass = 1.0, stiffness = 900.0, dampening = 28.0 })
hl.curve("thor_spring_fast", { type = "spring", mass = 1.0, stiffness = 1200.0, dampening = 32.0 })
hl.curve("thor_bezier", { type = "bezier", points = { {0.25, 0.1}, {0.25, 1.0} } })
hl.curve("thor_bezier_smooth", { type = "bezier", points = { {0.42, 0.0}, {0.58, 1.0} } })
hl.curve("linear", { type = "bezier", points = { {0.0, 0.0}, {1.0, 1.0} } })

-- Global animation fallback
hl.animation({ leaf = "global", enabled = true, speed = 5, bezier = "thor_bezier" })

-- Windows: Lightning-fast popin with hammer-strike spring settle
hl.animation({ leaf = "windows", enabled = true, speed = 5, spring = "thor_spring", style = "popin" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5, spring = "thor_spring_fast", style = "popin" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4, spring = "thor_spring", style = "popin" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, spring = "thor_spring" })

-- Workspaces: Fluid slidefade
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "thor_bezier_smooth", style = "slidefade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 5, bezier = "thor_bezier", style = "slidefade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5, bezier = "thor_bezier", style = "slidefade" })

-- Fades & Rotating Electric Border
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4, bezier = "thor_bezier" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 4, bezier = "thor_bezier" })
hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "thor_bezier" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 25, bezier = "linear", style = "loop" })
