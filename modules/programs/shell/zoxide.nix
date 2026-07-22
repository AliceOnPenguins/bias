{ self, inputs, ... }: {
  flake.homeModules.zoxide = { pkgs, lib, ... }: {
    programs.zoxide = {
      enable = true;
      enableZshIntegration = true;
      enableFishIntegration = true;
    };
  };
}
