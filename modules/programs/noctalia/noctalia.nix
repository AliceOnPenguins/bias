{ self, inputs, ... }: {
  flake.homeModules.noctaliav5 =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    {
      imports = [ inputs.noctalia.homeModules.default ];
      programs.noctalia = {
        enable = true;
        settings = {

          theme = {
            mode = "dark";
            pure_black_dark = true;
            source = "custom";
            custom_palette = "yunah";
            community_palette = "Vesper";
            builtin = "Kanagawa";
            templates = {
              builtin_ids = [
                "btop"
                "gtk3"
                "gtk4"
                "kitty"
                "qt"
              ];
              community_ids = [ ];
            };
          };

          wallpaper = {
            enabled = true;
            default.path = "\~/bias/wallpapers/illit2.jpeg";
            directory = "\~/bias/wallpapers/";
            automation = {
              enabled = true;
              interval_seconds = 1200;
            };
          };

          bar = {
            order = [ "uwu" ];
            uwu = {
              background_opacity = 1.00;
              border = "on_primary";
              capsule_fill = "on_hover";
              center = [ "clock" ];
              end = [
                "tray"
                "notifications"
                "spacer_3"
                "ram"
                "spacer_2"
                "cpu"
              ];
              font_family = config.theme.font.nerdFont;
              font_weight = 400;
              margin_edge = 10;
              margin_ends = 30;
              padding = 15;
              radius = 17;
              scale = 1.6;
              start = [
                "workspaces"
                "media"
              ];
              thickness = 45;
              widget_spacing = 10;
            };
          };

          desktop_widgets = {
            enabled = false;
          };

          keybinds = {
            left = [ "Ctrl+h" ];
            down = [ "Ctrl+j" ];
            up = [ "Ctrl+k" ];
            right = [ "Ctrl+l" ];
          };

          notification = {
            background_opacity = 1.00;
            offset_x = 10.0;
            offset_y = 10.0;
            scale = 0.75;
          };

          osd = {
            background_opacity = 1.00;
            scale = 0.75;
          };

          shell = {
            launch_apps_as_systemd_services = true;
            clipboard_auto_paste = "off";
            clipboard_history_max_entries = 100;
            corner_radius_scale = 0.55;
            date_format = "{:%A}, {:/%d/%m/%Y}";
            font_family = config.theme.font.nerdFont;
            lang = "en";
            polkit_agent = true;
            settings_show_advanced = true;
            show_location = false;
            panel = {
              categories = false;
              placement = "centered";
              compact = false;
              sort_by_usage = false;
              show_icons = true;
            };
          };

          accessibility = {
            ui_scale = 1.5;
          };

          weather = {
            enable = true;
          };

          location = {
            address = "Uhersky Brod, Czech Republic"; # i dont actually live here
          };

          widget = {
            workspaces = {
              focused_color = "error";
              empty_color = "outline";
              style = "minimal";
              occupied_color = "outline";
            };
            media = {
              artist_first = true;
              hide_album_art = true;
              max_length = 350;
            };
            spacer_2.type = "spacer";
            spacer_3.type = "spacer";
          };
        };
      };
    };
}
