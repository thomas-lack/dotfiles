{...}: {
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  services = {
    # add support for bluetooth management
    blueman.enable = true;
    # add support for usb sticks
    gvfs.enable = true;
    udisks2.enable = true;
  };
}
