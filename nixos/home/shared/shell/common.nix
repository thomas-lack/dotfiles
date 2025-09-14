{pkgs, ...}: {
  home.packages = with pkgs; [
    # terminal
    neofetch
    yazi
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
    xsel
    memtest86plus
    jq
    fd
    dust

    # encryption
    openssl
    openconnect
    openvpn
    openvpn3

    # monitoring
    btop
    iotop
    iftop
    procs
    bandwhich
    ookla-speedtest

    # system tools
    pciutils # lspci
    usbutils # lsusb
    patchelf

    # man pages
    tlrc

    # password manager
    prs
  ];
}
