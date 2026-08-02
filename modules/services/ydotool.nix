{ self, inputs, ... }: {
  flake.nixosModules.ydotool = { pkgs, lib, ... }: {
    programs.ydotool.enable = true;
  };
}
