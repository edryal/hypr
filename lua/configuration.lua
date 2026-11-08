hl.config({
    general = {
        gaps_in = 3,
        gaps_out = { top = 5, left = 12, right = 12, bottom = 12 },
        border_size = 2,
        col = {
            active_border = { colors = { "rgba(f38ba8ff)", "rgba(f5c2e7ff)" }, angle = 60 },
            inactive_border = "rgba(595959aa)",
        },
        resize_on_border = false,
        allow_tearing = true,
        layout = "dwindle",
        snap = { enabled = true, respect_gaps = true }
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
    render = { cm_auto_hdr = 2 },
    animations = { enabled = true, workspace_wraparound = true },
    dwindle = { preserve_split = true },
    master = { new_status = "master" },
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        animate_manual_resizes = true,

        focus_on_activate = true,
        allow_session_lock_restore = true,

        enable_swallow = true,
        swallow_regex = "^(kitty)$"
    },
    cursor = {
        no_hardware_cursors = 0,
        default_monitor = "desc:ViewSonic Corporation VX2758A-QHD",
    },
    input = {
        kb_layout = "us,ro",
        kb_variant = ",std",
        kb_model = "",
        kb_options = "grp:shifts_toggle",
        kb_rules = "",
        follow_mouse = 1,
        accel_profile = "flat",
        sensitivity = 0,
        touchpad = { natural_scroll = true },
    },
    ecosystem = { no_update_news = true, no_donation_nag = true },
    debug = { disable_logs = false, gl_debugging = false }
})
