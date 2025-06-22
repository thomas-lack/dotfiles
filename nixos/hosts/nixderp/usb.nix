{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    usbutils
    udiskie
    udisks
  ];
}
