{pkgs, ...}: {
  home.packages = with pkgs; [
    # terminal
    neofetch
    # nnn # file manager
    mc
    bat
    ghostty

    # archives
    zip
    xz
    unrar
    unzip
    p7zip

    # utils
    ripgrep
    wl-clipboard
    xclip

    # encryption
    openssl
    openconnect
    openvpn
    openvpn3

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
