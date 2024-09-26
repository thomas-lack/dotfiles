{pkgs, ...}: {
  home.packages = [
    (pkgs.jdk.override {enableJavaFX = true;})
    pkgs.maven
  ];
}
