{...}: {
  programs.zellij = {
    enable = true;
    enableZshIntegration = false;
    settings = {
      default_mode = "normal";
      default_layout = "default";
      theme = "catppuccin-frappe";
    };
  };
}
