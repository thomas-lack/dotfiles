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
      # hashes can be found here:
      # https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/os-specific/linux/nvidia-x11/default.nix
      package = config.boot.kernelPackages.nvidiaPackages.mkDriver {
        version = "580.82.09";
        sha256_64bit = "sha256-Puz4MtouFeDgmsNMKdLHoDgDGC+QRXh6NVysvltWlbc=";
        sha256_aarch64 = "sha256-6tHiAci9iDTKqKrDIjObeFdtrlEwjxOHJpHfX4GMEGQ=";
        openSha256 = "sha256-YB+mQD+oEDIIDa+e8KX1/qOlQvZMNKFrI5z3CoVKUjs=";
        settingsSha256 = "sha256-um53cr2Xo90VhZM1bM2CH4q9b/1W2YOqUcvXPV6uw2s=";
        persistencedSha256 = "sha256-lbYSa97aZ+k0CISoSxOMLyyMX//Zg2Raym6BC4COipU=";
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
