{pkgs, ...}: {
  home.packages = with pkgs; [
    kdePackages.kate
    kdePackages.kio-extras
  ];
}
