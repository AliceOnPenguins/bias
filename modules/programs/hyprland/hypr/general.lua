-- ███╗   ███╗██╗███████╗ ██████╗
-- ████╗ ████║██║██╔════╝██╔════╝
-- ██╔████╔██║██║███████╗██║
-- ██║╚██╔╝██║██║╚════██║██║
-- ██║ ╚═╝ ██║██║███████║╚██████╗
-- ╚═╝     ╚═╝╚═╝╚══════╝ ╚═════╝
---------------------------------

hl.config({
  animations = {
    enabled = true,
  },

  general = {
    no_focus_fallback = true,
  },
  misc = {
    render_unfocused_fps = 45,
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    vrr = 0,
    mouse_move_enables_dpms = true,
    key_press_enables_dpms = true,
    animate_manual_resizes = false,
    animate_mouse_windowdragging = false,
    enable_swallow = false,
    swallow_regex = "(foot|kitty|allacritty|Alacritty)",
    on_focus_under_fullscreen = 2,
    session_lock_xray = true,
    initial_workspace_tracking = false,
  },
})
