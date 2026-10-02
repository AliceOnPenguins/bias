{ self, inputs, ... }: {
  flake.homeModules.neovimTheme = { pkgs, lib, ... }: {
    programs.nvf.settings.vim = {
      theme.enable = false;
      extraPlugins = {
        rose-pine = {
          package = pkgs.vimPlugins.rose-pine;
          setup = ''
            require("rose-pine").setup({
                variant = "main",
                dark_variant = "main",
                dim_inactive_windows = false,
                extend_background_behind_borders = true,
                enable = {
                    terminal = true,
                    legacy_highlights = false,
                    migrations = true,
                },
                styles = {
                    bold = true,
                    italic = true,
                    transparency = true,
                },
                palette = {
                    main = {
                        base = "#1a191e",
                        surface = "#262330",
                        overlay = "#2a282c",
                        muted = "#8f7a9a",
                        rose_bright = "#ffcde0",
                        subtle = "#cdb0c4",
                        text = "#f6e6ee",
                        love = "#f07a96",
                        gold = "#ffd3a5",
                        rose = "#f7a8c4",
                        pine = "#a8e8e4",
                        foam = "#9bd7f3",
                        iris = "#d0b4f5",
                        highlight_low = "#2d2a36",
                        highlight_med = "#3d3a4a",
                        highlight_high = "#8f7a9a",
                    },
                },
                highlight_groups = {
                    Comment = { fg = "muted", italic = true },
                    VertSplit = { fg = "surface", bg = "surface" },
                    CursorLine = { bg = "highlight_low" },
                    CursorLineNr = { fg = "rose_bright", bold = true },
                    LineNr = { fg = "muted" },
                    Visual = { fg = "iris", bg = "#ffffff" },
                    Search = { fg = "base", bg = "gold" },
                    IncSearch = { fg = "base", bg = "rose" },
                    MatchParen = { fg = "pine", bold = true },
                    StatusLine = { fg = "text", bg = "surface" },
                    StatusLineNC = { fg = "muted", bg = "base" },
                    Pmenu = { fg = "text", bg = "surface" },
                    PmenuSel = { fg = "base", bg = "rose" },
                    PmenuThumb = { bg = "iris" },
                    DiagnosticError = { fg = "love" },
                    DiagnosticWarn = { fg = "gold" },
                    DiagnosticInfo = { fg = "foam" },
                    DiagnosticHint = { fg = "iris" },
                    GitSignsAdd = { fg = "pine" },
                    GitSignsChange = { fg = "gold" },
                    GitSignsDelete = { fg = "love" },
                    ["@keyword"] = { fg = "iris", italic = true },
                    ["@function"] = { fg = "rose" },
                    ["@string"] = { fg = "gold" },
                    ["@variable"] = { fg = "text" },
                    ["@constant"] = { fg = "foam" },
                    ["@type"] = { fg = "foam", italic = true },
                    ["@comment"] = { fg = "muted", italic = true },
                    ["@punctuation"] = { fg = "subtle" },
                    ["@tag"] = { fg = "love" },
                    ["@property"] = { fg = "pine" },
                },
            })
            vim.cmd("colorscheme rose-pine")
          '';
        };
      };
    };
  };
}
