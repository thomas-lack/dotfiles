{
  pkgs,
  unstablePkgs,
  ...
}: {
  home.packages = [
    unstablePkgs.lutris
    pkgs.vice
    unstablePkgs.bottles
  ];
}
