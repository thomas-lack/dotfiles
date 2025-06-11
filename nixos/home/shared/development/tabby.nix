{pkgs, ...}: {
  home.packages = [
    (pkgs.tabby.override {config.cudaSupport = true;})
  ];
}
