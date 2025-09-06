{
  config,
  pkgs,
  ...
}: {
  # add graphic card settings
  hardware = {
    graphics = {
      enable = true;
    };
    nvidia = {
      #package = config.boot.kernelPackages.nvidiaPackages.production;
      #package = config.boot.kernelPackages.nvidiaPackages.beta;
      # load specific driver until kernel 6.15 is fully supported by beta / production packages
      package = config.boot.kernelPackages.nvidiaPackages.mkDriver {
        version = "575.64.05";
        sha256_64bit = "sha256-hfK1D5EiYcGRegss9+H5dDr/0Aj9wPIJ9NVWP3dNUC0=";
        sha256_aarch64 = "sha256-GRE9VEEosbY7TL4HPFoyo0Ac5jgBHsZg9sBKJ4BLhsA=";
        openSha256 = "sha256-mcbMVEyRxNyRrohgwWNylu45vIqF+flKHnmt47R//KU=";
        settingsSha256 = "sha256-o2zUnYFUQjHOcCrB0w/4L6xI1hVUXLAWgG2Y26BowBE=";
        persistencedSha256 = "sha256-2g5z7Pu8u2EiAh5givP5Q1Y4zk4Cbb06W37rf768NFU=";
        usePersistenced = true;
      };
      # Modesetting is required.
      modesetting.enable = true;
      # Nvidia power management. Experimental, and can cause sleep/suspend to fail.
      # Enable this if you have graphical corruption issues or application crashes after waking
      # up from sleep. This fixes it by saving the entire VRAM memory to /tmp/ instead
      # of just the bare essentials.
      powerManagement.enable = false;
      # Fine-grained power management. Turns off GPU when not in use.
      # Experimental and only works on modern Nvidia GPUs (Turing or newer).
      powerManagement.finegrained = false;
      # Use the NVidia open source kernel module (not to be confused with the
      # independent third-party "nouveau" open source driver).
      # Support is limited to the Turing and later architectures. Full list of
      # supported GPUs is at:
      # https://github.com/NVIDIA/open-gpu-kernel-modules#compatible-gpus
      # Only available from driver 515.43.04+
      open = true;
      # Enable the Nvidia settings menu,
      # accessible via `nvidia-settings`.
      nvidiaSettings = true;
      # give some software, e.g. Blender, access to CUDA GPU
    };
  };

  # enabling cuda support globally leads to lots of recompiling packages
  #nixpkgs.config.cudaSupport = true;

  environment.systemPackages = with pkgs; [
    vulkan-tools
    vulkan-loader
    vulkan-validation-layers
    (pkgsi686Linux.vulkan-loader)
  ];
}
