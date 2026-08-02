hl.window_rule({
    name = "suppress-maximize-requests",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

hl.window_rule({
    name = "prevent-idle-in-fullscreen",
    match = { fullscreen = 1 },
    idle_inhibit = "fullscreen",
}):set_enabled(false)

hl.window_rule({
    name = "overlay-rules-for-spoverlay",
    match = {
        class = "^(spoverlay)$",
        title = "^(spoverlay — Spoverlay)$",
    },
    pin = true,
    float = true,
    no_focus = true,
    no_initial_focus = true,
    border_size = 0,
    no_shadow = true,
})

hl.window_rule({
    name = "spawn-spoverlay-top-right",
    match = { title = "^(spoverlay — Spoverlay)$" },
    move = { "monitor_w * 0.81", "48" },
}):set_enabled(true)

hl.window_rule({
    name = "spawn-spoverlay-top-left",
    match = { title = "^(spoverlay — Spoverlay)$" },
    move = { 30, 48 },
}):set_enabled(false)

hl.window_rule({
    name = "spawn-spoverlay-bottom-right",
    match = { title = "^(spoverlay — Spoverlay)$" },
    move = { "monitor_w * 0.81", "monitor_h * 0.9" },
}):set_enabled(false)

hl.window_rule({
    name = "spawn-spoverlay-bottom-left",
    match = { title = "^(spoverlay — Spoverlay)$" },
    move = { "30", "monitor_h * 0.9" },
}):set_enabled(false)

hl.window_rule({
    name = "overlay-rules-for-discoverlay",
    match = { class = "^(Discord Overlay)$" },
    pin = true,
    float = true,
    no_focus = true,
    no_initial_focus = true,
    border_size = 0,
    no_shadow = true,
    opaque = true,
    no_blur = true,
})

hl.window_rule({
    name = "spawn-discoverlay-middle-left",
    match = { class = "^(Discord Overlay)$" },
    move = { "30", "monitor_h * 0.15" },
})

-- too buggy when forced to be an "overlay" just let it do whatever it wants
-- hl.window_rule({
-- 	name = "overlay-rules-for-gpu-screen-recorder-ui",
-- 	match = { class = "^(gsr-ui)$" },
-- 	persistent_size = true,
-- 	pin = true,
-- 	float = true,
-- 	border_size = 0,
-- 	move = { 0, 0 },
-- 	size = { "monitor_w", "monitor_h - 50" },
-- })

hl.window_rule({
    name = "xwayland-video-bridge-fixes",
    match = { class = "xwaylandvideobridge" },
    no_initial_focus = true,
    no_focus = true,
    no_anim = true,
    no_blur = true,
    max_size = { 1, 1 },
    opacity = 0.0,
})

hl.window_rule({
    name = "spawn-goclip-on-cursor",
    match = { class = "^(com.github.edryal.goclip)$" },
    pin = true,
    float = true,
    border_size = 0,
    move = { "cursor_x - 30", "cursor_y - 20" },
})

hl.window_rule({
    name = "spawn-showmethekey-floating",
    match = { title = "^(Floating Window - Show Me The Key)$" },
    pin = true,
    float = true,
    opaque = true,
    decorate = true,
    -- no_focus = true,
    border_size = 0,
    size = { 800, 100 },
    move = { 1700, 1280 },
})

hl.window_rule({
    match = { class = "cs2" },
    immediate = true,
    no_shadow = true,
    no_blur = true,
})

hl.window_rule({
    match = { class = "gamescope" },
    immediate = true
})
