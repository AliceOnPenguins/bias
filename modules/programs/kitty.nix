{ self, inputs, ... }: {
  flake.homeModules.kitty =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    {
      programs.kitty = {
        enable = true;
        settings = {
          font_family = config.theme.font.nerdFont;
          font_size = 14;
          cursor_shape = "block";
          scrollback_lines = 1600;
          url_style = "curly";
          open_url_with = "default";
          detect_urls = true;
          show_hyperlink_targets = true;
          underline_hyperlinks = "hover";
          sync_to_monitor = false;
          enable_audio_bell = false;
          visual_bell_duration = 0.0;
          window_margin_width = 5;
          confirm_os_window_close = 2;
          background_opacity = 0.75;
          background_blur = 0;
          shell_integration = "false_cursor";
          shell = "zsh";
          include = "./themes/noctalia.conf";
        };
      };
    };
}
