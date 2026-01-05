{unstablePkgs, ...}: {
  home.packages = with unstablePkgs; [
    ollama-cuda
  ];
}
