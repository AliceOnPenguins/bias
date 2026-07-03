{ self, inputs, ... }: {
    flake.homeModules.setFonts = { pkgs, lib, ... }: {
        options.theme = {
            font = {
                nerdFont = lib.mkOption {
                    type = lib.types.str;
                    default = "Maple Mono NF CN";
                  };
              };
          };
      };
    flake.nixosModules.setFonts = { pkgs, lib, ... }: {
        options.theme = {
            font = {
                nerdFont = lib.mkOption {
                    type = lib.types.str;
                    default = "Maple Mono NF CN";
                  };
              };
          };
      };
  }
