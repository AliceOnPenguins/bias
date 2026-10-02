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
            custom_palette = "meow";
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
              "meow"
            ];
            meow = {
              position = "top";
              thickness = 36;
              layer = "top";
              reserve_space = true;
              background_opacity = 1.0;
              shadow = true;

              margin_edge = 0;
              margin_ends = 0;
              radius = 0;
              padding = 18;
              widget_spacing = 16;
              scale = 1.3;
              font_weight = 600;
              font_family = config.theme.font.uiFont;
              hover_highlight = true;
              capsule = false;
              color = "on_surface_variant";

              start = [
                "meow-ws"
                # "meow-window"
              ];
              center = [ "meow-clock" ];
              end = [
                "meow-vis"
                "meow-media"
                "tray"
                "volume"
                "notifications"
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
            meow-ws = {
              type = "workspaces";
              style = "minimal";
              show_labels = true;
              label_source = "id";
              focused_color = "primary";
              occupied_color = "on_surface_variant";
              empty_color = "outline";
            };
            meow-window = {
              type = "active_window";
              display = "icon_and_text";
              icon_size = 16;
              max_length = 280;
              title_scroll = "on_hover";
              color = "on_surface";
            };
            meow-clock = {
              type = "clock";
              format = "{:%H:%M}";
              tooltip_format = "{:%A, %d %B %Y}";
              font_weight = 600;
              color = "primary";
            };
            meow-vis = {
              type = "audio_visualizer";
              width = 40;
              bands = 12;
              mirrored = true;
              centered = true;
              color_1 = "primary";
              color_2 = "secondary";
            };
            meow-media = {
              type = "media";
              artist_first = true;
              art_size = 18;
              hide_album_art = true;
              max_length = 260;
              title_scroll = "on_hover";
              hide_when_no_media = true;
              color = "secondary";
            };
          };
        };
      };
    };
}
