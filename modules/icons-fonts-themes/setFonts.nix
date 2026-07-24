{ self, inputs, ... }: {
  flake.homeModules.setFonts = { pkgs, lib, ... }: {
    options.theme = {
      font = {
        nerdFont = lib.mkOption {
          type = lib.types.str;
          default = "PlemolJP Console NF Text";
        };
      };
    };
  };
  flake.nixosModules.setFonts = { pkgs, lib, ... }: {
    options.theme = {
      font = {
        nerdFont = lib.mkOption {
          type = lib.types.str;
          default = "PlemolJP Console NF Text";
        };
      };
    };
  };
}
