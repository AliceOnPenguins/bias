{ self, inputs, ... }: {
  flake.homeModules.noctaliaTheme = { pkgs, lib, ... }: {
    xdg.configFile."noctalia/palettes/yunah.json" = {
      source = lib.mkForce ./yunah.json;
    };
    xdg.configFile."noctalia/palettes/ls.json" = {
      source = lib.mkForce ./ls.json;
    };
  };
}
