{pkgs, ...}: {
  home.packages = with pkgs; [
    (lutris.override {
      extraPkgs = pkgs: [
        python3
        gnome3.adwaita-icon-theme
        ryujinx
      ];
    })
    # wineWowPackages.stable
    wineWowPackages.waylandFull
    winetricks
  ];
}
