{ self, inputs, ... }:
{
  flake.homeModules.fastfetch = { pkgs, lib, ... }: {
    programs.fastfetch = {
      enable = true;
      settings = {
        "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
        logo = {
          type = "auto";
          source = "~/bias/modules/programs/fastfetch/assets/yunah.webp";
          height = 20;
          width = 32;
          padding = {
            top = 1;
            left = 2;
          };
        };
        display = {
          separator = "  ";
          disableLinewrap = true;
        };
        modules = [
          "break"
          "break"
          {
            type = "custom";
            format = "{##B8B8D1}╭─ {##F7A8C4}⋆｡°✩ system";
          }
          {
            type = "os";
            key = "{##B8B8D1}│  {##F7A8C4}  {#}";
          }
          {
            type = "kernel";
            key = "{##B8B8D1}│  {##F7A8C4}  {#}";
          }
          {
            type = "packages";
            key = "{##B8B8D1}│  {##F7A8C4}󰏖  {#}";
            format = "{nix-all} nix, {flatpak-all} flatpak";
          }
          {
            type = "wm";
            key = "{##B8B8D1}│  {##F7A8C4}󰨇  {#}";
          }
          {
            type = "terminal";
            key = "{##B8B8D1}│  {##F7A8C4}  {#}";
          }
          {
            type = "shell";
            key = "{##B8B8D1}│  {##F7A8C4}  {#}";
          }
          {
            type = "localip";
            key = "{##B8B8D1}│  {##F7A8C4}󰌗  {#}";
          }
          {
            type = "custom";
            format = "{##B8B8D1}╰─";
          }
          "break"
          {
            type = "custom";
            format = "{##B8B8D1}╭─ {##C9B6F2}⋆｡°✩ hardware";
          }
          {
            type = "host";
            key = "{##B8B8D1}│  {##C9B6F2}  {#}";
          }
          {
            type = "gpu";
            key = "{##B8B8D1}│  {##C9B6F2}  {#}";
          }
          {
            type = "display";
            key = "{##B8B8D1}│  {##C9B6F2}󰍹  {#}";
          }
          {
            type = "memory";
            key = "{##B8B8D1}│  {##C9B6F2}  {#}";
          }
          {
            type = "disk";
            key = "{##B8B8D1}│  {##C9B6F2}󱛟  {#}";
          }
          {
            type = "custom";
            format = "{##B8B8D1}╰─";
          }
          "break"
        ];
      };
    };
  };
}
