{pkgs, ...}: {
  home.packages = with pkgs; [
    # networking tools
    freerdp
    tigervnc
    nmap

    # office
    libreoffice-qt6-fresh
    drawio

    # misc
    keymapp
    carlito
  ];
}
