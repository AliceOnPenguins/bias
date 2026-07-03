{ self, inputs, ... }: {
  flake.nixosModules.sddm = { pkgs, lib, ... }:
    let
      thyxThemed = inputs.thyx.packages.${pkgs.system}.default.overrideAttrs (old: {
        postInstall = (old.postInstall or "") + ''
          install -Dm644 ${./../../../wallpapers/mamihlapinatapai.jpg} $out/share/sddm/themes/thyx/themebackground.jpeg
          cat > $out/share/sddm/themes/thyx/theme.conf <<EOF
          [General]
          AutoFingerprintOnLoad=true
          Background="./themebackground.jpeg"
          Font="Maple Mono NF CN"
          FontSize="20"
          FormPosition="center"
          Blur="0.03"
          FormBackgroundColor="#1a1a1c"
          LoginFieldBackgroundColor="#1a1a1c"
          LoginFieldTextColor="#f0dce5"
          LoginButtonBackgroundColor="#f5b8cf"
          PasswordFieldBackgroundColor="#1a1a1c"
          PasswordFieldTextColor="#f0dce5"
          PlaceholderTextColor="#f0dce5"
          DateTextColor="#f0dce5"
          TimeTextColor="#f5b8cf"
          HourFormat="HH:mm"
          DateFormat="dddd d MMMM"
          HoverLoginButtonBackgroundColor="#f2789a"
          SystemButtonsIconsColor="#f0dce5"
          HoverSystemButtonsIconsColor="#f2789a"
          EnvironmentButtonTextColor="#1a1a1c"
          EOF
        '';
      });
    in {
      imports = [ inputs.thyx.nixosModules.default ];
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
