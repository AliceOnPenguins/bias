{
  self,
  inputs,
  ...
}:
{
  flake.homeModules.hyprland =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    {
      wayland.windowManager.hyprland = {
        enable = true;
        configType = "lua";
        package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
        portalPackage =
          inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
        systemd.enable = false;
        plugins = [ inputs.hy3.packages.${pkgs.stdenv.hostPlatform.system}.hy3 ];
        extraLuaFiles = {
          "animations" = {
            content = ./hypr/animations.lua;
            autoLoad = true;
          };

          "appearance" = {
            content = ./hypr/appearance.lua;
            autoLoad = true;
          };

          "env" = {
            content = ./hypr/env.lua;
            autoLoad = true;
          };

          "execs" = {
            content = ./hypr/execs.lua;
            autoLoad = true;
          };

          "general" = {
            content = ./hypr/general.lua;
            autoLoad = true;
          };

          "input" = {
            content = ./hypr/input.lua;
            autoLoad = true;
          };

          "keybinds" = {
            content = ./hypr/keybinds.lua;
            autoLoad = true;
          };

          "layout" = {
            content = ./hypr/layout.lua;
            autoLoad = true;
          };

          "monitor" = {
            content = ./hypr/monitor.lua;
            autoLoad = true;
          };

          "rules" = {
            content = ./hypr/rules.lua;
            autoLoad = true;
          };

        };
      };
      xdg.configFile."hypr/xdph.conf".source = ./hypr/xdph.conf;
    };
}
