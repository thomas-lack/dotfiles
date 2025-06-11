{...}: {
  # add docker with CUDA support
  virtualisation.docker = {
    enable = true;
    enableOnBoot = false;
  };
  hardware.nvidia-container-toolkit.enable = true;
}
