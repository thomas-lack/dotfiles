{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ../shared/shell
    ../shared/development
    ./programs
  ];

  home.username = "thomas";
  home.homeDirectory = "/home/thomas";

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  # Let home manager install and manage itself
  programs.home-manager.enable = true;
}