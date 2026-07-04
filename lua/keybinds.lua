local terminal = "kitty"
-- local fileManager = "nautilus --new-window"
local fileManager = "thunar"
local allMenu = "rofi -show run"
local menu = "rofi -show drun"
local powerMenu = "/home/catalin/.config/rofi/powermenu.sh"
local wallpaperSwitcher = "/home/catalin/.config/rofi/wallpaper-switcher.sh"
local browser = "/home/catalin/.local/bin/zen"
local discord = "discord --enable-features=UseOzonePlatform --ozone-platform=wayland"
local screenshotSelection = "hyprshot -zm region --clipboard-only"
local screenshotWindow = "hyprshot -zm window --clipboard-only"
local screenshotActiveWindow = "hyprshot -m window -m active --clipboard-only"
local reload = "hyprctl reload"
local lockscreen = "hyprlock"
local notificationCenter = "swaync-client -t"
local reloadNotificationCenterConfig = "swaync-client -R"
local colorPicker = "hyprpicker --autocopy"
local videoDownloader = "/home/catalin/.config/rofi/video-downloader.sh"

local mainMod = "ALT"

-- Personal binds
hl.bind(mainMod .. " + SHIFT + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(screenshotSelection))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd(screenshotWindow))
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd(screenshotActiveWindow))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd(allMenu))
hl.bind(mainMod .. " + SHIFT + I", hl.dsp.exec_cmd(wallpaperSwitcher))
hl.bind(mainMod .. " + SHIFT + U", hl.dsp.exec_cmd(videoDownloader))

hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(discord))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(notificationCenter))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd(colorPicker))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd(lockscreen))

hl.bind(mainMod .. " + CONTROL + R", hl.dsp.exec_cmd(reload .. ","))
hl.bind(mainMod .. " + CONTROL + P", hl.dsp.exec_cmd(powerMenu))
hl.bind(mainMod .. " + CONTROL + SHIFT + N", hl.dsp.exec_cmd(reloadNotificationCenterConfig))
hl.bind(mainMod .. " + CONTROL + SHIFT + Q", hl.dsp.exit())
hl.bind(mainMod .. " + CONTROL + SHIFT + Escape", hl.dsp.exec_cmd("killall waybar || waybar"))

hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + B", require("lua.magnifier"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Move focus with vim like keybinds
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))

-- Move window with vim like keybinds
hl.bind(mainMod .. " + SHIFT + h", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.window.move({ direction = "d" }))

local resizeStep = 55

-- Arrow keys
hl.bind(
	mainMod .. " + CONTROL + right",
	hl.dsp.window.resize({ x = resizeStep, y = 0, relative = true }),
	{ repeating = true }
)

hl.bind(
	mainMod .. " + CONTROL + left",
	hl.dsp.window.resize({ x = -resizeStep, y = 0, relative = true }),
	{ repeating = true }
)

hl.bind(
	mainMod .. " + CONTROL + up",
	hl.dsp.window.resize({ x = 0, y = -resizeStep, relative = true }),
	{ repeating = true }
)

hl.bind(
	mainMod .. " + CONTROL + down",
	hl.dsp.window.resize({ x = 0, y = resizeStep, relative = true }),
	{ repeating = true }
)

-- Vim keys
hl.bind(
	mainMod .. " + CONTROL + l",
	hl.dsp.window.resize({ x = resizeStep, y = 0, relative = true }),
	{ repeating = true }
)

hl.bind(
	mainMod .. " + CONTROL + h",
	hl.dsp.window.resize({ x = -resizeStep, y = 0, relative = true }),
	{ repeating = true }
)

hl.bind(
	mainMod .. " + CONTROL + k",
	hl.dsp.window.resize({ x = 0, y = -resizeStep, relative = true }),
	{ repeating = true }
)

hl.bind(
	mainMod .. " + CONTROL + j",
	hl.dsp.window.resize({ x = 0, y = resizeStep, relative = true }),
	{ repeating = true }
)

package.path = package.path .. ";./?.lua;./?/init.lua"
local smw = require("plugins.split-monitor-workspaces")
smw.setup({
	workspace_count = 10,
	monitor_priority = { "DP-2", "desc:S22R35x" },
	keep_focused = true,
	enable_persistent_workspaces = false,
	link_monitors = false,
	max_workspaces = {
		["DP-2"] = 10,
		["desc:Samsung Electric Company S22R35x"] = 4,
	},
})

for i = 1, smw.get_amount_of_workspaces() do
	local n = tostring(i)
	if n == "10" then
		n = "0"
	end
	hl.bind(mainMod .. " + " .. n, smw.workspace(n))
	hl.bind(mainMod .. " + SHIFT + " .. n, smw.move_to_workspace_silent(n))
end

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Pass keybinds
hl.bind("F7", hl.dsp.exec_cmd("socat - unix-connect:/tmp/Spoverlay.sock"))
hl.bind("F2", hl.dsp.exec_cmd("goclip --toggle"))
