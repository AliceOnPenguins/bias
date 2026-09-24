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
          FormBackgroundColor="#1a1a1c"
          LoginFieldBackgroundColor="#1a1a1c"
          LoginFieldTextColor="#f0dce5"
          LoginButtonBackgroundColor="#e0609a"
          PasswordFieldBackgroundColor="#1a1a1c"
          PasswordFieldTextColor="#f0dce5"
          PlaceholderTextColor="#f0dce5"
          DateTextColor="#f0dce5"
          TimeTextColor="#e0609a"
          HourFormat="HH:mm"
          DateFormat="dddd d MMMM"
          HoverLoginButtonBackgroundColor="#f2789a"
          SystemButtonsIconsColor="#f0dce5"
          HoverSystemButtonsIconsColor="#f2789a"
          EnvironmentButtonTextColor="#1a1a1c"
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
