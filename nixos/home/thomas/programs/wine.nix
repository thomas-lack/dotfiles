{unstablePkgs, ...}: {
  home.packages = with unstablePkgs; [
    #wineWowPackages.unstable
    (wineWowPackages.stagingFull.override {
      waylandSupport = true;
      vulkanSupport = true;
      # enable fallback to xwayland
      x11Support = true;
    })
    winetricks
  ];
}
