-- ██╗      █████╗ ██╗   ██╗ ██████╗ ██╗   ██╗████████╗
-- ██║     ██╔══██╗╚██╗ ██╔╝██╔═══██╗██║   ██║╚══██╔══╝
-- ██║     ███████║ ╚████╔╝ ██║   ██║██║   ██║   ██║
-- ██║     ██╔══██║  ╚██╔╝  ██║   ██║██║   ██║   ██║
-- ███████╗██║  ██║   ██║   ╚██████╔╝╚██████╔╝   ██║
-- ╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝  ╚═════╝    ╚═╝
-------------------------------------------------------

-- local function set_autotile(width, height)
hl.config({
  plugin = {
    hy3 = {
      autotile = {
        enable = true,
        trigger_width = 1100, -- width,
        trigger_height = 500, -- height,
      },
    },
  },
})
-- end
--
-- local function apply_autotile_for_workspace(id)
--   if id >= 1 and id <= 5 then
--     set_autotile(1100, 500)
--   elseif id >= 6 and id <= 10 then
--     set_autotile(560, 500)
--   end
-- end
--
-- hl.on("workspace.active", function(ws)
--   apply_autotile_for_workspace(ws.id)
-- end)
--
-- -- run once immediately for whatever workspace is active at boot
-- apply_autotile_for_workspace(hl.get_active_workspace().id)
