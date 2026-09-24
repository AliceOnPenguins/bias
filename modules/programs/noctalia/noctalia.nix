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
            custom_palette = "ls";
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
            order = [
              # "uwu"
              "sex"
            ];
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
              font_family = config.theme.font.uiFont;
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
            sex = {
              position = "top";
              thickness = 48;
              layer = "top";
              reserve_space = true;
              margin_edge = 12;
              margin_ends = 60;
              padding = 14;
              widget_spacing = 10;
              radius = 16;
              border = "outline";
              border_width = 1.0;
              shadow = true;
              background_opacity = 0.92;
              scale = 1.3;
              font_scale = 1.1;
              font_weight = 500;
              font_family = config.theme.font.uiFont;

              capsule = true;
              capsule_fill = "surface_variant";
              capsule_radius = 14.0;
              capsule_opacity = 0.92;
              capsule_padding = 10;
              hover_highlight = true;

              start = [ "active_window" ];
              center = [
                "group:time"
                "weather"
              ];
              end = [
                "group:media"
                "group:quick"
                "control-center"
              ];

              capsule_group = [
                {
                  id = "time";
                  members = [ "clock" ];
                  fill = "primary";
                  foreground = "#2a2830";
                  radius = 14.0;
                  padding = 10;
                }
                {
                  id = "media";
                  members = [ "media" ];
                  fill = "tertiary";
                  foreground = "#2a2830";
                  radius = 14.0;
                  padding = 10;
                }
                {
                  id = "quick";
                  members = [
                    "network"
                    "bluetooth"
                    "volume"
                    "battery"
                  ];
                  fill = "secondary";
                  foreground = "#2a2830";
                  accordion = true;
                  accordion_direction = "start";
                  padding = 10;
                }
              ];
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
            font_family = config.theme.font.uiFont;
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
