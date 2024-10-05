{pkgs, ...}: {
  home.packages = with pkgs; [
    # networking tools
    freerdp3

    # office
    libreoffice-qt6-fresh
    drawio

    # communication
    discord
    webex
    zoom-us
    skypeforlinux

    # misc
    prusa-slicer
    keymapp
    mcomix
  ];
}
