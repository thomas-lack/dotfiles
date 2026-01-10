{pkgs, ...}: {
  boot = {
    initrd = {
      availableKernelModules = [
        "xhci_pci"
        "ahci"
        "usb_storage"
        "usbhid"
        "sd_mod"
        "sr_mod"
      ];
    };
    # do not use latest kernel, until open nvidia drivers are compatible
    kernelPackages = pkgs.linuxPackages_latest;
    #kernelPackages = pkgs.linuxPackages_6_17;
    kernelModules = [
      "kvm-amd"
    ];
    kernelParams = [];
    extraModulePackages = [];
  };
}
