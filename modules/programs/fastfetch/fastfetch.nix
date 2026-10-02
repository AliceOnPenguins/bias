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
          width = 30;
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
            format = "{##CDB0C4}╭─ {##F7A8C4}⋆｡°✩ system";
          }
          {
            type = "os";
            key = "{##CDB0C4}│  {##F7A8C4}  {#}";
          }
          {
            type = "kernel";
            key = "{##CDB0C4}│  {##F7A8C4}  {#}";
          }
          {
            type = "packages";
            key = "{##CDB0C4}│  {##F7A8C4}󰏖  {#}";
            format = "{nix-all} nix, {flatpak-all} flatpak";
          }
          {
            type = "wm";
            key = "{##CDB0C4}│  {##F7A8C4}󰨇  {#}";
          }
          {
            type = "terminal";
            key = "{##CDB0C4}│  {##F7A8C4}  {#}";
          }
          {
            type = "shell";
            key = "{##CDB0C4}│  {##F7A8C4}  {#}";
          }
          {
            type = "localip";
            key = "{##CDB0C4}│  {##F7A8C4}󰌗  {#}";
          }
          {
            type = "custom";
            format = "{##CDB0C4}╰─";
          }
          "break"
          {
            type = "custom";
            format = "{##CDB0C4}╭─ {##9BD7F3}⋆｡°✩ hardware";
          }
          {
            type = "host";
            key = "{##CDB0C4}│  {##9BD7F3}  {#}";
          }
          {
            type = "gpu";
            key = "{##CDB0C4}│  {##9BD7F3}  {#}";
          }
          {
            type = "display";
            key = "{##CDB0C4}│  {##9BD7F3}󰍹  {#}";
          }
          {
            type = "memory";
            key = "{##CDB0C4}│  {##9BD7F3}  {#}";
          }
          {
            type = "disk";
            key = "{##CDB0C4}│  {##9BD7F3}󱛟  {#}";
          }
          {
            type = "custom";
            format = "{##CDB0C4}╰─";
          }
          "break"
        ];
      };
    };
  };
}
