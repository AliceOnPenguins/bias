-- ██╗      █████╗ ██╗   ██╗ ██████╗ ██╗   ██╗████████╗
-- ██║     ██╔══██╗╚██╗ ██╔╝██╔═══██╗██║   ██║╚══██╔══╝
-- ██║     ███████║ ╚████╔╝ ██║   ██║██║   ██║   ██║
-- ██║     ██╔══██║  ╚██╔╝  ██║   ██║██║   ██║   ██║
-- ███████╗██║  ██║   ██║   ╚██████╔╝╚██████╔╝   ██║
-- ╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝  ╚═════╝    ╚═╝
-------------------------------------------------------

local function set_autotile(width, height)
  hl.config({
    plugin = {
      hy3 = {
        autotile = {
          enable = true,
          trigger_width = width,
          trigger_height = height,
        },
      },
    },
  })
end

hl.on("workspace.active", function(ws)
  local id = ws.id
  if id >= 1 and id <= 5 then
    -- 4K logical width ~3840 → 0.29 * 3840
    set_autotile(1100, 500)
  elseif id >= 6 and id <= 10 then
    -- 1080p logical width ~1920 → 0.29 * 1920
    set_autotile(560, 500)
  end
end)
