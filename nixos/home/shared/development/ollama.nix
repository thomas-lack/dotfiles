{pkgs, ...}: {
  home.packages = with pkgs; [
    #ollama-cuda
    /nix/store/pcrs43cbxla8k3pmyd1hzl7acdbivg99-ollama-0.30.5
    llmfit
  ];
}
