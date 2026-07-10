{ self, inputs, ... }: {
  flake.homeModules.neovimPresence = { pkgs, lib, ... }: {
    programs.nvf.settings = {
      vim.startPlugins = [
        pkgs.vimPlugins.presence-nvim
      ];
      vim.extraPlugins = {
        presence = {
          package = pkgs.vimPlugins.presence-nvim;
          setup = ''
            require('presence').setup {
              neovim_image_text = "text seized by the european union",
            }
          '';
        };
      };
    };
  };
}
