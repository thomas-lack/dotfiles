{pkgs, ...}: {
  home.packages = with pkgs; [
    # networking tools
    freerdp3
    tigervnc

    # office
    libreoffice-qt6-fresh
    drawio

    # communication
    webex

    # misc
    keymapp
  ];
}
