{ self, inputs, ... }: {
  flake.homeModules.remus-white =
    { pkgs, lib, ... }:
    let
      remusWhite = pkgs.stdenv.mkDerivation {
        pname = "remus-white-cursor";
        version = "1.0";
        src = ./assets/Remus-White;
        dontBuild = true;
        installPhase = ''
          mkdir -p $out/share/icons/Remus-White
          cp -r $src/* $out/share/icons/Remus-White/
        '';
      };
    in
    {
      home.packages = [ remusWhite ];
      home.pointerCursor = {
        enable = true;
        gtk.enable = true;
        x11.enable = true;
        name = "Remus-White";
        package = remusWhite;
        size = 32;
      };
    };
}
