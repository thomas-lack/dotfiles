{pkgs, ...}: {
  home.packages = with pkgs; [
    # networking tools
    nmap

    # office
    libreoffice-qt
    drawio
    obsidian

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
    keepassxc
    flashgbx
  ];
}
