{ self, inputs, ... }: {
  flake.homeModules.mpd-mpris = { pkgs, lib, ... }: {
    services.mpd-mpris = {
      enable = true;
      settings = {
        network = "unix";
        host = "/run/user/1000/mpd/socket";
      };
      # mpd.useLocal = true;
    };
  };
}
