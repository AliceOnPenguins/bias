{ self, inputs, ... }: {
  flake.homeModules.setFonts = { pkgs, lib, ... }: {
    options.theme = {
      font = {
        monoFont = lib.mkOption {
          type = lib.types.str;
          default = "Berkeley Mono";
        };
        uiFont = lib.mkOption {
          type = lib.types.str;
          default = "San Francisco Text";
        };
      };
    };
  };
  flake.nixosModules.setFonts = { pkgs, lib, ... }: {
    options.theme = {
      font = {
        monoFont = lib.mkOption {
          type = lib.types.str;
          default = "Berkeley Mono";
        };
        uiFont = lib.mkOption {
          type = lib.types.str;
          default = "San Francisco Text";
        };
      };
    };
  };
}
