{pkgs, ...}: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thomas = {
    isNormalUser = true;
    description = "Thomas";
    extraGroups = ["networkmanager" "wheel" "plugdev" "docker"];
  };
  users.users.work = {
    isNormalUser = true;
    description = "Work Account";
    extraGroups = ["networkmanager" "wheel" "plugdev" "docker"];
  };

  # Use zsh as default shell
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
}
