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
    openvpn

    # monitoring
    btop
    iotop
    iftop
    ookla-speedtest

    # system tools
    pciutils # lspci
    usbutils # lsusb

    # man pages
    tlrc
  ];
}
