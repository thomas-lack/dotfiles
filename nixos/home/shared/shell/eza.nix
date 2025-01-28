{...}: {
  programs.eza = {
    enable = true;
    enableZshIntegration = true;
    icons = "auto";
    extraOptions = [
      "--group-directories-first"
      "--header"
      "--group"
    ];
  };
}
