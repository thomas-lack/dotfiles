{
  pkgs,
  unstablePkgs,
  ...
}: {
  home.packages = [
    #pkgs.super-slicer-beta
    pkgs.orca-slicer
    #unstablePkgs.orca-slicer
  ];
}
