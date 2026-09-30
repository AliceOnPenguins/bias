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
          text = "f5eee8";
          subtext = "d1a8b4";
          main = "1c1a1b";
          main-elevated = "262224";
          highlight = "2b2628";
          highlight-elevated = "3a3235";
          sidebar = "1c1a1b";
          player = "1c1a1b";
          card = "262224";
          shadow = "000000";
          selected-row = "f5eee8";
          button = "e685ae";
          button-active = "ffab76";
          button-disabled = "8a6570";
          tab-active = "2b2628";
          notification = "262224";
          notification-error = "ff8a6a";
          equalizer = "e685ae";
          misc = "8a6570";
        };
        enabledExtensions = with spicePkgs.extensions; [
          adblockify
          hidePodcasts
          shuffle
        ];
      };
    };
}
