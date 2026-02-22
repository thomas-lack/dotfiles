{unstablePkgs, ...}: {
  home.packages = with unstablePkgs; [
    #wineWowPackages.unstable
    (wineWow64Packages.stagingFull.override {
      waylandSupport = true;
      vulkanSupport = true;
      # enable fallback to xwayland
      x11Support = true;
    })
    winetricks
  ];
}
