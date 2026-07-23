{ self, inputs, ... }: {
  flake.nixosModules.fontSetup = { pkgs, lib, ... }: {
    fonts = {
      packages = with pkgs; [
        nerd-fonts.departure-mono
        nerd-fonts.jetbrains-mono
        maple-mono.NF-CN-unhinted
        ioskeley-mono.normal-NF
        noto-fonts
        noto-fonts-cjk-sans
        noto-fonts-color-emoji
      ];
    };
  };
}
