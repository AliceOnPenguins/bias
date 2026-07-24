{ self, inputs, ... }: {
  flake.nixosModules.fontSetup = { pkgs, lib, ... }: {
    fonts = {
      packages = with pkgs; [
        plemoljp-nf
        nerd-fonts.jetbrains-mono
        maple-mono.NF-CN-unhinted
        noto-fonts
        noto-fonts-cjk-sans
        noto-fonts-color-emoji
      ];
    };
  };
}
