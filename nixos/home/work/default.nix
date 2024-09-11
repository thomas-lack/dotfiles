{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ../shared/shell
    ../shared/development
    ./programs
  ];

  home.username = "work";
  home.homeDirectory = "/home/work";
}
