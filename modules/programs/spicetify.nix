{ self, inputs, ... }:
{
  flake.homeModules.spicetify =
    { pkgs, lib, ... }:
    let
      spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
    in
    {
      imports = [ inputs.spicetify-nix.homeManagerModules.spicetify ];

      programs.spicetify = {
        enable = true;
        theme = spicePkgs.themes.catppuccin;
        colorScheme = "custom";
        customColorScheme = {
          text = "f6e6ee";
          subtext = "cdb0c4";
          main = "1a191e";
          main-elevated = "262330";
          highlight = "2a282c";
          highlight-elevated = "3a3545";
          sidebar = "1a191e";
          player = "1a191e";
          card = "262330";
          shadow = "000000";
          selected-row = "f6e6ee";
          button = "f7a8c4";
          button-active = "9bd7f3";
          button-disabled = "8f7a9a";
          tab-active = "2a282c";
          notification = "262330";
          notification-error = "f07a96";
          equalizer = "f7a8c4";
          misc = "8f7a9a";
        };
        enabledExtensions = with spicePkgs.extensions; [
          adblockify
          hidePodcasts
          shuffle
        ];
      };
    };
}
