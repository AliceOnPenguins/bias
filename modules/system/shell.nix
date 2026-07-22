{ self, inputs, ... }: {
  flake.nixosModules.defaultShell = { pkgs, lib, ... }: {
    users.defaultUserShell = pkgs.zsh;
  };
}
