{ self, inputs, ... }: {
  flake.nixosModules.opentabletdriver = { pkgs, lib, ... }: {
    hardware.opentabletdriver = {
      enable = true;
    };
  };
}
