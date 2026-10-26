hl.window_rule({
    name = "Always open Discord on specific workspace",
    match = { class = "discord" },
    no_initial_focus = true,
    workspace = 1
})

hl.window_rule({
    name = "Remove composition for CS2",
    match = { class = "cs2" },
    -- immediate = true,
    no_shadow = true,
    no_blur = true,
    fullscreen = true,
    decorate = false
})

hl.window_rule({
    name = "Remove composition for Rocket League",
    match = { initial_title = "Rocket League (64-bit, DX11, Cooked)" },
    immediate = true,
    no_shadow = true,
    no_blur = true,
    fullscreen = true,
    decorate = false
})

hl.window_rule({
    name = "Always open Dead by Daylight on specific workspace",
    match = { initial_title = "DeadByDaylight" },
    workspace = 2
})

hl.window_rule({
    name = "Always open CS2 on specific workspace",
    match = { class = "cs2" },
    workspace = 2
})

hl.window_rule({
    name = "Always open Gwent on specific workspace",
    match = { initial_title = "Gwent" },
    workspace = 2
})

hl.window_rule({
    name = "Always open Rocket League on specific workspace",
    match = { initial_title = "Rocket League (64-bit, DX11, Cooked)" },
    workspace = 2
})
