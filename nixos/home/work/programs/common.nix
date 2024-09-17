{pkgs, ...}: {
  home.packages = with pkgs; [
    # terminal
    neofetch
    # nnn # file manager
    mc
    bat
    ncmpcpp

    # archives
    zip
    xz
    unrar
    unzip
    p7zip

    # utils
    ripgrep
    wl-clipboard

    # encryption
    openssl
    openconnect

    # networking tools
    freerdp3
    tightvnc

    # monitoring
    btop
    iotop
    iftop

    # system tools
    pciutils # lspci
    usbutils # lsusb

    # office
    libreoffice-qt6-fresh
    drawio

    # communication
    webex

    # misc
    keymapp
  ];
}