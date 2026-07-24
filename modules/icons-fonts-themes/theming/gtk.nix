{ self, inputs, ... }: {
  flake.homeModules.gtk =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    {
      gtk = {
        enable = true;
        theme = {
          name = "adw-gtk3";
          package = pkgs.adw-gtk3;
        };
        iconTheme = {
          name = "Papirus";
          package = pkgs.papirus-icon-theme;
        };
        font = {
          name = config.theme.font.nerdFont;
          size = 16;
        };
        cursorTheme = {
          name = "Remus-White";
          size = 32;
        };
        gtk2.extraConfig = ''
          gtk-toolbar-style=GTK_TOOLBAR_ICONS
          gtk-toolbar-icon-size=GTK_ICON_SIZE_LARGE_TOOLBAR
          gtk-button-images=0
          gtk-menu-images=0
          gtk-enable-event-sounds=1
          gtk-enable-input-feedback-sounds=0
          gtk-xft-antialias=1
          gtk-xft-hinting=1
          gtk-xft-hintstyle="hintslight"
          gtk-xft-rgba="rgb"
        '';
        gtk3.extraConfig = {
          gtk-toolbar-style = "GTK_TOOLBAR_ICONS";
          gtk-toolbar-icon-size = "GTK_ICON_SIZE_LARGE_TOOLBAR";
          gtk-button-images = 0;
          gtk-menu-images = 0;
          gtk-enable-event-sounds = 1;
          gtk-enable-input-feedback-sounds = 0;
          gtk-xft-antialias = 1;
          gtk-xft-hinting = 1;
          gtk-xft-hintstyle = "hintslight";
          gtk-xft-rgba = "rgb";
          gtk-application-prefer-dark-theme = 1;
        };
        gtk4.extraConfig = {
          gtk-application-prefer-dark-theme = 1;
        };
      };
    };
}
