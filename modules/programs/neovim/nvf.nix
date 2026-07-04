{ self, inputs, ... }: {
  flake.homeModules.neovim =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    {
      imports = [ inputs.nvf.homeManagerModules.default ];

      programs.nvf = {
        enable = true;
        settings.vim = {
          viAlias = true;
          vimAlias = true;
          visuals = {
            nvim-web-devicons.enable = true;
            indent-blankline.enable = true;
          };
          options = {
            number = true;
            relativenumber = true;
            clipboard = "unnamedplus";
            undofile = true;
            undodir = "${config.home.homeDirectory}/.local/state/nvf/undo/";

            tabstop = 2;
            shiftwidth = 2;
            softtabstop = 2;
            expandtab = true;
          };

          statusline.lualine = {
            enable = true;
            theme = "auto";
          };

          utility.snacks-nvim = {
            enable = true;
            setupOpts = {
              explorer = { };
              picker = {
                sources = {
                  explorer = {
                  };
                };
              };
            };
          };

          keymaps = [
            {
              key = "<leader><leader>";
              mode = "n";
              silent = true;
              action = "<cmd>lua require('snacks').picker.smart()<cr>";
              desc = "Smart Find Files";
            }
          ];

          treesitter = {
            enable = true;
            fold = true;
            context.enable = true;
          };

          lsp = {
            enable = true;
            formatOnSave = true;
          };
          languages = {
            nix.enable = true;
            lua.enable = true;
            bash.enable = true;
            markdown.enable = true;
          };

          autocomplete.blink-cmp.enable = true;

          git.gitsigns.enable = true;

          autopairs.nvim-autopairs.enable = true;

          binds.whichKey.enable = true;

          formatter.conform-nvim.enable = true;
        };
      };
    };
}
