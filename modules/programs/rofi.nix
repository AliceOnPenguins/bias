{ self, inputs, ... }: {
  flake.homeModules.rofi =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    {
      programs.rofi =
        let
          inherit (config.lib.formats.rasi) mkLiteral;
        in
        {
          enable = true;
          package = pkgs.rofi;
          settings = {
            terminal = "${pkgs.kitty}/bin/kitty";
            font = "${config.theme.font.uiFont} 19";
            modi = "drun,run,window";
            show-icons = true;
            icon-theme = "Papirus-Dark";
            display-drun = " Apps";
            display-run = " Run";
            display-window = " Window";
            drun-display-format = "{name}";
          };

          theme = {
            "*" = {
              bg0 = mkLiteral "#131114";
              bg1 = mkLiteral "#1c1a1f";
              bg2 = mkLiteral "#242026";
              fg0 = mkLiteral "#f5e3d8";
              fg1 = mkLiteral "#8f7a72";
              dark-orange = mkLiteral "#d52d00";
              orange = mkLiteral "#ff9a56";
              flag-white = mkLiteral "#ffffff";
              pink = mkLiteral "#e0609a";
              dark-rose = mkLiteral "#a30262";

              background-color = mkLiteral "transparent";
              text-color = mkLiteral "@fg0";

              font = "${config.theme.font.uiFont} 19";
            };

            "window" = {
              location = mkLiteral "center";
              anchor = mkLiteral "center";
              width = mkLiteral "860px";
              transparency = "real";
              border-radius = mkLiteral "4px";
              padding = mkLiteral "0px";
              background-color = mkLiteral "@bg0";
              # the flag, as structure rather than decoration: five stripes
              # run down the left edge as a real border, not a top-bar wash.
              border = mkLiteral "0px 0px 0px 8px";
              border-color = mkLiteral "linear-gradient(180deg, #d52d00, #ff9a56, #ffffff, #e0609a, #a30262)";
            };

            "mainbox" = {
              background-color = mkLiteral "transparent";
              border-radius = mkLiteral "0px";
              padding = mkLiteral "25px 28px 25px 35px";
              spacing = mkLiteral "16px";
              children = mkLiteral "[ inputbar, listview ]";
            };

            "inputbar" = {
              background-color = mkLiteral "transparent";
              text-color = mkLiteral "@fg0";
              border-radius = mkLiteral "0px";
              border = mkLiteral "0px 0px 1px 0px";
              border-color = mkLiteral "@bg2";
              padding = mkLiteral "0px 0px 13px 0px";
              spacing = mkLiteral "10px";
              children = mkLiteral "[ prompt, entry ]";
            };

            "prompt" = {
              text-color = mkLiteral "@pink";
              font = "${config.theme.font.uiFont} Bold 21";
            };

            "entry" = {
              placeholder = "search";
              placeholder-color = mkLiteral "@fg1";
              text-color = mkLiteral "@fg0";
              cursor = mkLiteral "text";
            };

            "listview" = {
              background-color = mkLiteral "transparent";
              columns = 1;
              lines = 8;
              spacing = mkLiteral "2px";
              cycle = true;
              dynamic = true;
              scrollbar = false;
              fixed-height = false;
            };

            "element" = {
              background-color = mkLiteral "transparent";
              text-color = mkLiteral "@fg0";
              border-radius = mkLiteral "0px";
              padding = mkLiteral "11px 20px 11px 20px";
              spacing = mkLiteral "12px";
              orientation = mkLiteral "horizontal";
            };

            "element normal.normal" = {
              background-color = mkLiteral "transparent";
              text-color = mkLiteral "@fg0";
            };

            "element alternate.normal" = {
              background-color = mkLiteral "transparent";
              text-color = mkLiteral "@fg0";
            };

            "element selected.normal" = {
              background-color = mkLiteral "@bg2";
              text-color = mkLiteral "@flag-white";
              border-radius = mkLiteral "0px";
              border = mkLiteral "0px 0px 0px 4px";
              border-color = mkLiteral "@pink";
              padding = mkLiteral "11px 20px 11px 17px";
            };

            "element-icon" = {
              size = mkLiteral "35px";
              vertical-align = mkLiteral "0.5";
            };

            "element-text" = {
              text-color = mkLiteral "inherit";
              vertical-align = mkLiteral "0.5";
            };

            "message" = {
              background-color = mkLiteral "@bg1";
              border-radius = mkLiteral "0px";
              padding = mkLiteral "8px 10px";
              margin = mkLiteral "0px 0px 6px 0px";
            };

            "textbox" = {
              text-color = mkLiteral "@fg0";
            };
          };
        };
    };
}
