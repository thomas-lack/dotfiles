{pkgs, ...}: {
  home.packages = with pkgs; [
    # networking tools
    nmap

    # office
    libreoffice-qt6-fresh
    drawio

    # communication
    discord
    zoom-us

    # file transfer
    aria2
    seafile-client

    # misc
    keymapp
    mcomix
    bchunk
  ];
}
