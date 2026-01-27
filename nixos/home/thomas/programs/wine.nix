{unstablePkgs, ...}: {
  home.packages = with unstablePkgs; [
    #wineWowPackages.unstable
    wineWowPackages.waylandFull
    winetricks
  ];
}
