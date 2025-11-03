{...}: {
  programs.zellij = {
    enable = true;
    enableZshIntegration = false;
    settings = {
      default_mode = "normal";
      default_layout = "default";
      default_shell = "zsh";
      theme = "catppuccin-frappe";
      show_startup_tips = false;
    };
  };
}
