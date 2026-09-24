{ self, inputs, ... }: {
  flake.homeModules.discordTheme = { pkgs, lib, ... }: {
    xdg.configFile."equibop/themes/yunahDark.css" = {
      source = ./yunahDark.css;
    };
    xdg.configFile."equibop/themes/lsDark.css" = {
      source = ./lsDark.css;
    };
  };
}
