{...}: {
  programs.zellij = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      default_mode = "normal";
      default_layout = "default";
      theme = "catppuccin-frappe";
    };
  };
}
