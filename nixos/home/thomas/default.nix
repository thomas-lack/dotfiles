{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ../shared/shell
    ../shared/development
    ./programs
  ];

  home.username = "thomas";
  home.homeDirectory = "/home/thomas";
}
