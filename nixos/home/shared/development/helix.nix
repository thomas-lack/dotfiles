{pkgs, ...}: {
  programs.helix = {
    enable = true;
    settings = {
      theme = "catppuccin_macchiato";
      editor = {
        line-number = "relative";
        lsp.display-messages = true;
        indent-guides.render = true;
      };
    };
  };
}
