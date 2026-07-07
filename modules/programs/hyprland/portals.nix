{ self, inputs, ... }: {
  flake.homeModules.xdgPortals =
    { pkgs, lib, ... }:
    {
      xdg.portal = {
        enable = lib.mkForce true;
        extraPortals = [
          pkgs.xdg-desktop-portal-wlr
          inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland
          pkgs.xdg-desktop-portal-termfilechooser
        ];
      };

      xdg.portal.config.common = {
        "default" = "hyprland;gtk";
        "org.freedesktop.impl.portal.FileChooser" = "termfilechooser";
      };

      home.sessionVariables.TERMCMD = "kitty --class=file_chooser";

      xdg.configFile."xdg-desktop-portal-termfilechooser/config" = {
        force = true;
        text = ''
          [filechooser]
          cmd=${pkgs.xdg-desktop-portal-termfilechooser}/share/xdg-desktop-portal-termfilechooser/yazi-wrapper.sh
        '';
      };
    };
}
