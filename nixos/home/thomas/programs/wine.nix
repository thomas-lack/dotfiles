{unstablePkgs, ...}: {
  home.packages = with unstablePkgs; [
    #wineWowPackages.unstable
    wineWowPackages.stagingFull.override
    {
      waylandSupport = true;
      vulkanSupport = true;
      x11Support = false;
    }
    winetricks
  ];
}
