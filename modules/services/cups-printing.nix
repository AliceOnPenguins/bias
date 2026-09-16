{ self, inputs, ... }: {
  flake.nixosModules.cups-printing = { pkgs, lib, ... }: {
    services.printing = {
      enable = true;
      browsing = true;
      drivers = [ pkgs.hplip ];
    };

    services.avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
  };
}
