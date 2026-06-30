{pkgs, ...}: {
  home.packages = with pkgs; [
    (llama-cpp.override {
      cudaSupport = true;
      rocmSupport = false;
      metalSupport = false;
      blasSupport = true;
    })
    llmfit
  ];
}
