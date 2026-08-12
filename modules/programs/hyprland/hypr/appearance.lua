--  █████╗ ██████╗ ██████╗ ███████╗ █████╗ ██████╗  █████╗ ███╗   ██╗ ██████╗███████╗
-- ██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔════╝██╔════╝
-- ███████║██████╔╝██████╔╝█████╗  ███████║██████╔╝███████║██╔██╗ ██║██║     █████╗
-- ██╔══██║██╔═══╝ ██╔═══╝ ██╔══╝  ██╔══██║██╔══██╗██╔══██║██║╚██╗██║██║     ██╔══╝
-- ██║  ██║██║     ██║     ███████╗██║  ██║██║  ██║██║  ██║██║ ╚████║╚██████╗███████╗
-- ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝
-------------------------------------------------------------------------------------
---

hl.config({
  general = {
    gaps_in = 10,
    gaps_out = 50,
    col = {
      active_border = {
        colors = {
          -- "rgba(f2789aff)",
          -- "rgba(f5b8cfff)",
          "rgba(ffffffff)",
          -- "rgba(d4b3f0ff)",
          "rgba(b8d4e8ff)",
        },
        angle = 45,
      },
      inactive_border = "rgba(1a1a1aaa)",
    },
    border_size = 3,
    allow_tearing = false,
    layout = "scrolling",
  },

  cursor = {
    enable_hyprcursor = false,
  },

  decoration = {
    rounding = 0,
    rounding_power = 1,
    active_opacity = 1.0,
    inactive_opacity = 1.0,

    shadow = {
      enabled      = false,
      range        = 12,
      render_power = 4,
      sharp        = false,
      color        = "rgba(0,0,0,0.19)",
      offset       = { 0, 0 },
      scale        = 1,
    },

    blur = {
      enabled = true,
      xray = false,
      special = false,
      new_optimizations = true,
      size = 2,
      passes = 3,
      noise = 0.05,
      contrast = 1.00,
      vibrancy = 0.00,
    },
  },
})
