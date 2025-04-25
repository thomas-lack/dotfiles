{
  pkgs,
  unstablePkgs,
  ...
}: {
  home.packages = [
    unstablePkgs.lutris
    pkgs.vice
  ];
}
