-- Curves
hl.curve("md3_decel", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })
hl.curve("md3_accel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })
hl.curve("menu_decel", { type = "bezier", points = { { 0.1, 1 }, { 0, 1 } } })
hl.curve("menu_accel", { type = "bezier", points = { { 0.38, 0.04 }, { 1, 0.07 } } })
hl.curve("expoOut", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })

-- Windows
hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "md3_decel", style = "popin 60%" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "md3_decel", style = "popin 60%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2, bezier = "md3_accel", style = "popin 60%" })
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "md3_decel" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.5, bezier = "md3_accel" })

-- Layers (waybar, rofi, notifications)
hl.animation({ leaf = "layersIn", enabled = true, speed = 2.5, bezier = "md3_decel", style = "popin 90%" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "md3_accel", style = "popin 95%" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 2, bezier = "md3_decel" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.2, bezier = "md3_accel" })

-- Workspaces
hl.animation({ leaf = "workspaces", enabled = true, speed = 3.5, bezier = "expoOut", style = "slidefade 20%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "md3_decel", style = "slidevert" })
