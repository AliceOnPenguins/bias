{ self, inputs, ... }: {
  flake.homeModules.direnv = { pkgs, lib, ... }: {
    programs.direnv = {
      enable = true;
      enableZshIntegration = true;
      enableFishIntegration = true;
      nix-direnv.enable = true;
    };
  };
}
