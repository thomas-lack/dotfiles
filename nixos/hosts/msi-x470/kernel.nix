{pkgs, ...}: {
  boot = {
    initrd = {
      availableKernelModules = ["xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" "sr_mod"];
    };
    #kernelPackages = pkgs.linuxPackages_latest;
    kernelPackages = pkgs.linuxPackages_6_14;
    kernelModules = ["kvm-amd"];
    kernelParams = [];
    extraModulePackages = [];
  };
}
