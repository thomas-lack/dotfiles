{pkgs, ...}: {
  home.packages = [
    pkgs.orca-slicer
    #(pkgs.orca-slicer.override {
    #  withNvidiaGLWorkaround = true;
    #})
  ];
}
