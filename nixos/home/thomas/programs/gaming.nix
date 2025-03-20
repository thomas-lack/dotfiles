{pkgs, ...}: {
  home.packages = with pkgs; [
    lutris
    vice
    sunshine
  ];
}
