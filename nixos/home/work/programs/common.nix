{pkgs, ...}: {
  home.packages = with pkgs; [
    # networking tools
    freerdp
    tigervnc
    nmap

    # office
    libreoffice-qt
    drawio
    obsidian

    # misc
    keymapp
    carlito
    keepassxc
  ];
}
