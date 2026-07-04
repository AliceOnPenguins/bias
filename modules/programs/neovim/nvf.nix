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
            termguicolors = true;
            number = true;
            relativenumber = true;
            clipboard = "unnamedplus";
            undofile = true;
            undodir = "${config.home.homeDirectory}/.local/state/nvf/undo/";
            tabstop = 2;
            shiftwidth = 2;
            softtabstop = 2;
            expandtab = true;
            cursorline = true;
            cursorlineopt = "number";
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
            # Move lines up/down
            {
              key = "<A-j>";
              mode = "n";
              silent = true;
              action = "<cmd>execute 'move .+' . v:count1<cr>==";
              desc = "Move Line Down";
            }
            {
              key = "<A-k>";
              mode = "n";
              silent = true;
              action = "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==";
              desc = "Move Line Up";
            }
            {
              key = "<A-j>";
              mode = "v";
              silent = true;
              action = ":m '>+1<cr>gv=gv";
              desc = "Move Selection Down";
            }
            {
              key = "<A-k>";
              mode = "v";
              silent = true;
              action = ":m '<-2<cr>gv=gv";
              desc = "Move Selection Up";
            }
            {
              key = "<A-j>";
              mode = "i";
              silent = true;
              action = "<esc><cmd>m .+1<cr>==gi";
              desc = "Move Line Down";
            }
            {
              key = "<A-k>";
              mode = "i";
              silent = true;
              action = "<esc><cmd>m .-2<cr>==gi";
              desc = "Move Line Up";
            }
          ];

          treesitter = {
            enable = true;
            fold = false;
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

          git.gitsigns.enable = false;

          autopairs.nvim-autopairs.enable = true;

          binds.whichKey.enable = true;

          formatter.conform-nvim.enable = true;
        };
      };
    };
}
