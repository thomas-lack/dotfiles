{pkgs, ...}: {
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "macchiato";
    };
  };

  plugins = {
    notify.enable = true;
    lualine = {
      enable = true;
      settings = {
        options = {
          icons_enabled = true;
          globalstatus = true;
          theme = "catppuccin";
        };
      };
    };
  };
}
