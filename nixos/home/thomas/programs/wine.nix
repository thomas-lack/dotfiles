{unstablePkgs, ...}: {
  home.packages = with unstablePkgs; [
    wineWowPackages.unstable
    winetricks
  ];
}
