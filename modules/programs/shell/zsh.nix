{ self, inputs, ... }: {
  flake.homeModules.zsh = { pkgs, lib, ... }: {
    programs.zsh = {
      enable = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      enableCompletion = true;
      history = {
        size = 10000;
        save = 10000;
        share = true;
        ignoreDups = true;
        ignoreSpace = true;
        extended = true;
      };
      plugins = [
        {
          name = "fzf-tab";
          src = pkgs.fetchFromGitHub {
            owner = "Aloxaf";
            repo = "fzf-tab";
            rev = "master";
            sha256 = "sha256-YhTSu0P7mFlVx1zBvbT0jNstkamcZHhPYJHKMAHgyuM=";
          };
        }
      ];
      shellAliases = {
        vi = "nvim";
        ls = "eza --icons -a";
        nrs = "sudo nixos-rebuild switch --flake ~/bias#bias";
        nru = "sudo nix flake update --flake ~/bias && sudo nixos-rebuild switch --flake ~/bias#bias";
        nsp = "nix search nixpkgs";
        ngc = "sudo nix-collect-garbage -d";
        nem = "yazi ~/bias/";
      };
      initContent = ''
        fastfetch
        bindkey '^H' backward-kill-word
        bindkey '^[[3;5~' backward-kill-word
      '';
    };
  };
}
