{...}: {
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "macchiato";
    };
  };

  plugins = {
    notify.enable = true;
    lualine = {
      settings = {
        options = {
          enable = true;
          iconsEnabled = true;
          globalstatus = true;
          theme = "catppuccin";
        };
      };
    };
  };
}
