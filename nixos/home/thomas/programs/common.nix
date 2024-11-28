{pkgs, ...}: {
  home.packages = with pkgs; [
    # office
    libreoffice-qt6-fresh
    drawio

    # communication
    discord
    webex
    zoom-us
    skypeforlinux

    # file transfer
    qbittorrent

    # misc
    prusa-slicer
    keymapp
    mcomix
    bchunk
  ];
}
