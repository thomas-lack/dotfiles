{pkgs, ...}: {
  home.packages = with pkgs; [
    wineWowPackages.unstable
    #wineWowPackages.waylandFull
    winetricks
  ];
}
