-------------------------------------------------------------------------------
-- ██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗
-- ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗██║████╗  ██║██╔════╝
-- █████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║██║██╔██╗ ██║██║  ███╗
-- ██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║██║██║╚██╗██║██║   ██║
-- ██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝██║██║ ╚████║╚██████╔╝
-- ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝
-------------------------------------------------------------------------------

local noctalia = "noctalia msg"
local terminal = "kitty -1"
local music = "kitty -1 rmpc"
local filemanager = "kitty -1 yazi"
local browser = "firefox"
local editor = "kitty -1 nvim"

-- Focus movement
hl.bind("SUPER + left", hl.dsp.layout("focus l"), { repeating = true })
hl.bind("SUPER + right", hl.dsp.layout("focus r"), { repeating = true })
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }), { repeating = true })
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }), { repeating = true })
hl.bind("SUPER + H", hl.dsp.layout("focus l"), { repeating = true })
hl.bind("SUPER + L", hl.dsp.layout("focus r"), { repeating = true })
hl.bind("SUPER + K", hl.dsp.focus({ direction = "up" }), { repeating = true })
hl.bind("SUPER + J", hl.dsp.focus({ direction = "down" }), { repeating = true })

-- Window movement
hl.bind("SUPER + SHIFT + left", hl.dsp.layout("swapcol l"))
hl.bind("SUPER + SHIFT + right", hl.dsp.layout("swapcol r"))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ direction = "down" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "down" }))
hl.bind("SUPER + SHIFT + H", hl.dsp.layout("swapcol l"))
hl.bind("SUPER + SHIFT + L", hl.dsp.layout("swapcol r"))

-- Column resize
hl.bind("SUPER + CTRL + L", hl.dsp.layout("colresize +conf"))
hl.bind("SUPER + CTRL + H", hl.dsp.layout("colresize -conf"))

-- Close window
hl.bind("ALT + F4", hl.dsp.window.close())
hl.bind("SUPER + Q", hl.dsp.window.close())

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
hl.bind("CTRL + SUPER + SHIFT + down", hl.dsp.window.move({ workspace = "r+1", follow = true }))
hl.bind("CTRL + SUPER + SHIFT + up", hl.dsp.window.move({ workspace = "r-1", follow = true }))
hl.bind("CTRL + SUPER + SHIFT + J", hl.dsp.window.move({ workspace = "r+1", follow = true }))
hl.bind("CTRL + SUPER + SHIFT + K", hl.dsp.window.move({ workspace = "r-1", follow = true }))

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
