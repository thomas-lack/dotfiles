# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  pkgs,
  modulesPath,
  lib,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    (modulesPath + "/installer/scan/not-detected.nix")
    # manual system description
    ./audio.nix
    ./bluetooth.nix
    ./boot-loader.nix
    ./docker.nix
    ./filesystem.nix
    ./flatpak.nix
    ./kernel.nix
    ./localization.nix
    ./network.nix
    ./nvidia.nix
    ./printer.nix
    ./ssh.nix
    ./steam.nix
    ./sunshine.nix
    ./time.nix
    ./udev-rules.nix
    ./usb.nix
    ./users.nix
    ./x11.nix
  ];

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    xorg.xhost
    neovim
    gparted
    dropbox # does not work in home manager
    #(writeTextDir "share/sddm/themes/breeze/theme.conf.user" ''
    #  [General]
    #  background=${kdePackages.plasma-workspace-wallpapers}/share/wallpapers/MilkyWay/contents/images/5120x2880.png
    #'')
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable the Flakes feature and command-line tool
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}
