{ self, inputs, ... }: {
  flake.nixosModules.diskAutomount = { pkgs, lib, ... }: {
    services.udisks2 = {
      enable = true;
    };
    services.gvfs = {
      enable = true;
    };
  };
}
