{ self, inputs, ... }: {
  flake.nixosModules.fontSetup =
    { pkgs, lib, ... }:
    let
      berkeleyMono = pkgs.stdenvNoCC.mkDerivation {
        pname = "berkeley-mono";
        version = "2.0";

        src = pkgs.requireFile {
          name = "berkeley-mono-otf-2.0.zip";
          sha256 = "0lllpg8pympncdj8z14la521i0sdrzbsc5lj2cpqmxm6v2rlnaw0";
          message = ''
            Run:
              mv ~/fonts/berkeley-mono-otf-2.0.zip $PWD/berkeley-mono-otf-2.0.zip
              nix-prefetch-url --type sha256 file://$PWD/berkeley-mono-otf-2.0.zip
          '';
        };

        nativeBuildInputs = [ pkgs.unzip ];
        unpackPhase = "unzip $src";
        installPhase = ''
          mkdir -p $out/share/fonts/opentype
          install -D -m444 -t $out/share/fonts/opentype *.otf
        '';

        meta = {
          license = lib.licenses.unfree;
          platforms = lib.platforms.all;
        };
      };
    in
    {
      nixpkgs.config.allowUnfreePredicate = pkg: lib.elem (lib.getName pkg) [ "berkeley-mono" ];

      fonts.packages = with pkgs; [
        plemoljp-nf
        nerd-fonts.jetbrains-mono
        maple-mono.NF-CN-unhinted
        noto-fonts
        noto-fonts-cjk-sans
        noto-fonts-color-emoji
        berkeleyMono
      ];
    };
}
