hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "catppuccin-mocha-red-cursors")

hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("TERMINAL", "kitty")

hl.env("PATH", os.getenv("HOME") .. "/go/bin:" .. os.getenv("HOME") .. "/.local/bin:" .. os.getenv("PATH"))
