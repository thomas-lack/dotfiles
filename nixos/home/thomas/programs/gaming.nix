{pkgs, ...}: {
  home.packages = with pkgs; [
    lutris
    vice
    libratbag # configure gaming mice
  ];
}
