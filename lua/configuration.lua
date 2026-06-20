hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 20,
		border_size = 2,
		col = {
			-- RED
			active_border = { colors = { "rgba(243, 139, 168, 1)", "rgba(243, 139, 168, 1)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",

			-- ORIGINAL
			-- active_border = { colors = { "rgba(f38ba8ff)", "rgba(eb6c6cff)" }, angle = 45 },
			-- inactive_border = "rgba(313244ff)",
		},
		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},
	decoration = {
		rounding = 10,
		rounding_power = 2,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},
		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},
	animations = {
		enabled = true,
	},
	dwindle = {
		preserve_split = true,
	},
	master = {
		new_status = "master",
	},
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},
	input = {
		-- kb_layout = "us,ro,jp",
		kb_layout = "us,ro",
		-- kb_variant = ",std,OADG109A",
		kb_variant = ",std",
		kb_model = "",
		kb_options = "grp:shifts_toggle",
		kb_rules = "",
		follow_mouse = 1,
		sensitivity = -0.6,
		touchpad = {
			natural_scroll = false,
		},
	},
	debug = {
		disable_logs = false,
		gl_debugging = true,
	},
	cursor = {
        -- if this value is false, the cursor won't be visible in vesktop screensharing
		no_hardware_cursors = true,
	},
})
