hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "catppuccin-mocha-red-cursors")

hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("GDK_BACKEND", "wayland")
hl.env("GTK_THEME", "Catppuccin-Red-Dark-BK")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("TERMINAL", "kitty")
hl.env("TERM", "xterm-256color")
hl.env("MOZ_ENABLE_WAYLAND", "1")

-- Discoverlay
hl.env("BOT_TOKEN", "")
hl.env("TARGET_USER_ID", "")
hl.env("OVERLAY_FONT_PATH", "\"/usr/share/fonts/TTF/JetBrainsMonoNerdFont-Bold.ttf\"")

hl.env("PATH", os.getenv("HOME") .. "/go/bin:" .. os.getenv("HOME") .. "/.local/bin:/usr/local/bin:/usr/bin:/bin")
