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
                        base = "#1a1a1c",
                        surface = "#252428",
                        overlay = "#2a282c",
                        muted = "#8a6b78",
                        rose_bright = "#ffd6ea",
                        subtle = "#c9a8b8",
                        text = "#f0dce5",
                        love = "#f2789a",
                        gold = "#ffd3a5",
                        rose = "#f5b8cf",
                        pine = "#a8dadc",
                        foam = "#b8d4e8",
                        iris = "#d4b3f0",
                        highlight_low = "#39383E",
                        highlight_med = "#4a4650",
                        highlight_high = "#8a6b78",
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
