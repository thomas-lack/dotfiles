{pkgs, ...}: {
  home.packages = [
    (pkgs.ollama.override {
      config.cudaSupport = true;
      config.rocmSupport = false;
    })
  ];
}
