-- ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗██████╗ ██╗   ██╗██╗     ███████╗
-- ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║██╔══██╗██║   ██║██║     ██╔════╝
-- ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║██████╔╝██║   ██║██║     █████╗
-- ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║██╔══██╗██║   ██║██║     ██╔══╝
-- ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝██║  ██║╚██████╔╝███████╗███████╗
--  ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝
--------------------------------------------------------------------------------------

-- Floating dialogs
local floatTitles = {
  "^Open File",
  "^Select a File",
  "^Choose wallpaper",
  "^Open Folder",
  "^Save As",
  "^Library",
  "^File Upload",
  ".*wants to save$",
  ".*wants to open$",
  ".*Welcome",
  "^[Pp]icture[-%s]?[Ii]n[-%s]?[Pp]icture",
  ".*is sharing (a window|your screen).*",
  "^Friends List",
  "Volume Control"
}
for _, floatd in ipairs(floatTitles) do
  hl.window_rule({ match = { title = floatd }, float = true })
end

-- Floating apps
local floatClasses = {
  "blueberry%.py",
  "guifetch",
  "nm-connection-editor",
  ".*plasmawindowed.*",
  "kcm_.*",
  ".*bluedevilwizard",
  "org%.freedesktop%.impl%.portal%.desktop%.kde",
  "xdg-desktop-portal-gtk",
  -- "steam_app_default",
  "pavucontrol-qt",
  "moe.launcher.an-anime-game-launcher",
}
for _, float in ipairs(floatClasses) do
  hl.window_rule({ match = { class = float }, float = true, center = true })
end

-- Focus on activate app list
local focusClasses = {
  "org.gnome.Nautilus",
  ".*firefox.*",
  "zen.*",
  "helium.*",
  "brave-origin-.*",
  "dev.noctalia.Noctalia.Settings",
  "[bB]itwarden",
  "[fF]augus-.*",
  "org.prismlauncher.PrismLauncher",
}
for _, focus in ipairs(focusClasses) do
  hl.window_rule({ match = { class = focus }, focus_on_activate = true })
end

-- keep every window rendering even when not on the visible workspace
hl.window_rule({
  match = { class = ".*" }, -- matches all window classes
  render_unfocused = true,
})

-- PiP - pin to all workspaces
hl.window_rule({
  match = { title = "^[Pp]icture[-%s]?[Ii]n[-%s]?[Pp]icture" },
  float = true,
  pin = true,
})

-- Roblox (Sober)
hl.window_rule({
  match = { class = "org%.vinegarhq%.Sober", title = ".*Join.*" },
  float = true,
  size = "1600 900",
})

-- Equibop scratchpad
hl.window_rule({
  match = { class = "equibop" },
  float = false,
  workspace = "special:equibop",
})

-- rmpc scratchpad
hl.window_rule({
  match = { class = "kitty", title = ".*rmpc.*" },
  float = false,
  workspace = "special:rmpc",
})

-- Steam games tearing
hl.window_rule({
  match = { class = "steam_app_.*" },
  immediate = true,
})

-- Fix XWayland drags
hl.window_rule({
  name = "fix-xwayland-drags",
  match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
  no_focus = true,
})

-- Fuckass random maximizing fix + no idling apps
hl.window_rule({
  name = "suppress-maximize-events",
  match = { class = ".*" },
  suppress_event = "maximize",
  idle_inhibit = "always",
})

hl.window_rule({
  name = "filepickeryazi",
  match = { class = "file_chooser" },
  center = true,
  focus_on_activate = true,
  float = true,
  size = { "monitor_w * 0.6", "monitor_h * 0.6" },
})

hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|osd)$",
  },
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})
