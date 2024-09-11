{...}: {
  home.sessionVariables.STARSHIP_CACHE = "/tmp/starship";

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = true;
      line_break.disabled = false;
      aws.disabled = true;
      gcloud.disabled = true;
      character = {
        success_symbol = "[›](bold green)";
        error_symbol = "[›](bold red)";
      };
    };
  };
}
