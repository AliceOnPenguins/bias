{ self, inputs, ... }: {
  flake.homeModules.nvimColorizer = { pkgs, lib, ... }: {
    programs.nvf.settings.vim.extraPlugins = {
      colorizer = {
        package = pkgs.vimPlugins.nvim-colorizer-lua;
        setup = ''
          require('colorizer').setup({
            user_default_options = {
              RGB = true;
              RRGGBB = true;
              names = true;
              RRGGBBAA = true;
              rgb_fn = true;
              hsl_fn = true;
              css = true;
            },
          })
        '';
      };
    };
  };
}
