{ self, inputs, ... }: {
  flake.homeModules.starship = { pkgs, lib, ... }: {
    programs.starship = {
      enable = true;
      enableFishIntegration = true;
      settings = {
        format = "[╭](dimmed white)[─](dimmed white)[ $username](bold #9bd7f3)[ in](dimmed white) [$directory](white)$git_branch$git_status\n[╰─❯](dimmed white) ";
        username = {
          format = "[$user]($style)";
          show_always = true;
          style_user = "bold #9bd7f3";
        };
        directory = {
          format = "[ ](#9bd7f3)[$path](#9bd7f3)";
          truncation_length = 3;
          truncate_to_repo = true;
          style = "";
        };
        git_branch = {
          format = " [[ ](#f7a8c4 bold)$branch](#f7a8c4)";
          symbol = "";
        };
        git_status = {
          format = "[ $all_status$ahead_behind](#9bd7f3)";
          conflicted = "=";
          ahead = "⇡\${count}";
          behind = "⇣\${count}";
          diverged = "⇕⇡\${ahead_count}⇣\${behind_count}";
          up_to_date = " 󰄬 ";
          untracked = " ?\${count} ";
          stashed = " 󰏖 ";
          modified = " !\${count} ";
          staged = " +\${count} ";
          renamed = " »\${count} ";
          deleted = " 󰅖\${count} ";
        };
        character = {
          success_symbol = "";
          error_symbol = "";
        };
      };
    };
  };
}
