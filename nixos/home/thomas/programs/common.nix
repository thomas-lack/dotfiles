{pkgs, ...}: {
  home.packages = with pkgs; [
    # networking tools
    nmap

    # office
    libreoffice-qt6-fresh
    drawio

    # communication
    discord
    webex
    zoom-us
    skypeforlinux

    # file transfer
    aria2

    # misc
    prusa-slicer
    keymapp
    mcomix
    bchunk
  ];
}
