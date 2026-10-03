{pkgs, ...}: {
  home.packages = with pkgs; [
    # networking tools
    freerdp
    tigervnc
    nmap

    # office
    libreoffice-qt6-fresh
    drawio
    obsidian

    # misc
    keymapp
    carlito
    keepassxc
  ];
}
