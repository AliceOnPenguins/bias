{ self, inputs, ... }: {
  flake.homeModules.fzf = { pkgs, lib, ... }: {
    programs.fzf = {
      enable = true;
      enableZshIntegration = true;
      enableFishIntegration = true;
    };
  };
}
