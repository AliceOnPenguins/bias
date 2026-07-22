{ self, inputs, ... }: {
  flake.nixosModules.systemPackages = { pkgs, lib, ... }: {
    programs = {
      hyprland = {
        enable = true;
        package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
        portalPackage =
          inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
        withUWSM = true;
        xwayland.enable = true;
      };
      fish.enable = true;
      zsh.enable = true;
      steam.enable = true;
    };

    environment.systemPackages = with pkgs; [
      git
      hyprshutdown
      rocmPackages.rocm-smi
      ffmpeg
      wget
      mlocate
      xdg-desktop-portal-termfilechooser
      gcc
      wl-clipboard
      tree-sitter
      psmisc
      terminus_font
    ];
  };
}
