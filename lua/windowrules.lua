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

hl.window_rule({
	name = "overlay-rules-for-gpu-screen-recorder-ui",
	match = { class = "^(gsr-ui)$" },
	pin = true,
	float = true,
	border_size = 0,
	no_shadow = true,
	opaque = true,
	no_blur = true,
})

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
