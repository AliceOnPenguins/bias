-------------------------------------------------------------------------------
-- ██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗
-- ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗██║████╗  ██║██╔════╝
-- █████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║██║██╔██╗ ██║██║  ███╗
-- ██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║██║██║╚██╗██║██║   ██║
-- ██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝██║██║ ╚████║╚██████╔╝
-- ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝
-------------------------------------------------------------------------------

local hy3 = hl.plugin.hy3

local noctalia = "noctalia msg"
local terminal = "kitty -1"
local music = "kitty -1 rmpc"
local filemanager = "kitty -1 yazi"
local browser = "firefox"
local editor = "kitty -1 nvim"

-- Focus movement (tree-aware, use hy3 not vanilla movefocus)
hl.bind("SUPER + left", hy3.move_focus("left"), { repeating = true })
hl.bind("SUPER + right", hy3.move_focus("right"), { repeating = true })
hl.bind("SUPER + up", hy3.move_focus("up"), { repeating = true })
hl.bind("SUPER + down", hy3.move_focus("down"), { repeating = true })
hl.bind("SUPER + H", hy3.move_focus("left"), { repeating = true })
hl.bind("SUPER + L", hy3.move_focus("right"), { repeating = true })
hl.bind("SUPER + K", hy3.move_focus("up"), { repeating = true })
hl.bind("SUPER + J", hy3.move_focus("down"), { repeating = true })

-- Group resize (replaces colresize +/-conf)
-- hy3.expand grows/shrinks the focused node relative to its siblings
hl.bind("SUPER + CTRL + L", hy3.expand("expand"))
hl.bind("SUPER + CTRL + H", hy3.expand("shrink"))

-- Window movement
hl.bind("SUPER + SHIFT + left", hy3.move_window("left"))
hl.bind("SUPER + SHIFT + right", hy3.move_window("right"))
hl.bind("SUPER + SHIFT + up", hy3.move_window("up"))
hl.bind("SUPER + SHIFT + down", hy3.move_window("down"))
hl.bind("SUPER + SHIFT + K", hy3.move_window("up"))
hl.bind("SUPER + SHIFT + J", hy3.move_window("down"))
-- H/L kept as a "swap" (once = true skips entering/leaving groups, closest analog to swapcol)
hl.bind("SUPER + SHIFT + H", hy3.move_window("left", { once = true }))
hl.bind("SUPER + SHIFT + L", hy3.move_window("right", { once = true }))

-- hy3 group management (i3-like split/tab controls)
hl.bind("SUPER + S", hy3.make_group("v"))
hl.bind("SUPER + G", hy3.make_group("h"))
hl.bind("SUPER + Z", hy3.change_group("toggletab"))
hl.bind("SUPER + A", hy3.change_focus("raise"))
hl.bind("SUPER + SHIFT + A", hy3.change_focus("lower"))

-- Close window
hl.bind("ALT + F4", hl.dsp.window.close())
hl.bind("SUPER + Q", hy3.kill_active())

-- Floating
hl.bind("SUPER + ALT + space", hl.dsp.window.float({ action = "toggle" }))

-- Fullscreen / maximize
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))

-- Workspace navigation
hl.bind("CTRL + SUPER + down", hl.dsp.focus({ workspace = "r+1" }))
hl.bind("CTRL + SUPER + up", hl.dsp.focus({ workspace = "r-1" }))
hl.bind("CTRL + SUPER + J", hl.dsp.focus({ workspace = "r+1" }))
hl.bind("CTRL + SUPER + K", hl.dsp.focus({ workspace = "r-1" }))

-- Move window to workspace
hl.bind("CTRL + SUPER + SHIFT + down", hy3.move_to_workspace("r+1"))
hl.bind("CTRL + SUPER + SHIFT + up", hy3.move_to_workspace("r-1"))
hl.bind("CTRL + SUPER + SHIFT + J", hy3.move_to_workspace("r+1"))
hl.bind("CTRL + SUPER + SHIFT + K", hy3.move_to_workspace("r-1"))

-- Mouse scroll workspace
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "r+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "r-1" }))

-- Mouse drag/resize
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Apps
hl.bind("SUPER + T", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + E", hl.dsp.exec_cmd(filemanager))
hl.bind("SUPER + W", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + C", hl.dsp.exec_cmd(editor))
hl.bind("SUPER + M", hl.dsp.exec_cmd(music))

hl.bind("CTRL + SUPER + V", hl.dsp.exec_cmd("pavucontrol-qt"))
hl.bind("CTRL + SHIFT + Escape", hl.dsp.exec_cmd("kitty -1 btop"))

-- Scratchpads
hl.bind("SUPER + D", hl.dsp.workspace.toggle_special("equibop"))
hl.bind("SUPER + D", hl.dsp.exec_cmd("equibop", { float = false, move = { 0, 0 } }))

-- Screenshot
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region -z -s"))

-- Color picker
hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("hyprpicker -a"))

-- Noctalia IPC
hl.bind("SUPER + V", hl.dsp.exec_cmd(noctalia .. " panel-toggle clipboard"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(noctalia .. " panel-toggle launcher"))
hl.bind("SUPER + O", hl.dsp.exec_cmd(noctalia .. " bar-toggle"))
hl.bind("CTRL + SUPER + T", hl.dsp.exec_cmd("killall -9 noctalia && sleep 1 && noctalia"))

-- Scripts
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("bash ~/.config/hypr/scripts/afk-toggle.sh"))
