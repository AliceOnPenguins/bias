{ self, inputs, ... }: {
  flake.nixosModules.sddm =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    let
      thyxThemed = inputs.thyx.packages.${pkgs.system}.default.overrideAttrs (old: {
        postInstall = (old.postInstall or "") + ''
          install -Dm644 ${./../../icons-fonts-themes/assets/2341921.jpg} $out/share/sddm/themes/thyx/themebackground.jpeg
          cat > $out/share/sddm/themes/thyx/theme.conf <<EOF
          [General]
          AutoFingerprintOnLoad=true
          Background="./themebackground.jpeg"
          Font="${config.theme.font.uiFont}"
          FontSize="20"
          FormPosition="center"
          Blur="0.03"
          FormBackgroundColor="#1a191e"
          LoginFieldBackgroundColor="#1a191e"
          LoginFieldTextColor="#f6e6ee"
          LoginButtonBackgroundColor="#f7a8c4"
          PasswordFieldBackgroundColor="#1a191e"
          PasswordFieldTextColor="#f6e6ee"
          PlaceholderTextColor="#f6e6ee"
          DateTextColor="#f6e6ee"
          TimeTextColor="#f7a8c4"
          HourFormat="HH:mm"
          DateFormat="dddd d MMMM"
          HoverLoginButtonBackgroundColor="#9bd7f3"
          SystemButtonsIconsColor="#f6e6ee"
          HoverSystemButtonsIconsColor="#9bd7f3"
          EnvironmentButtonTextColor="#1a191e"
          EOF
        '';
      });
    in
    {
      imports = [
        inputs.thyx.nixosModules.default
        self.nixosModules.setFonts
      ];
      services.displayManager.sddm = {
        enable = true;
        wayland.enable = true;
        thyx = {
          enable = true;
          package = thyxThemed;
        };
      };
    };
}
