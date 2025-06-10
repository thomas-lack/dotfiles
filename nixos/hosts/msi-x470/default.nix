# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking = {
    hostName = "nixderp";
    hosts = {
      "192.168.0.27" = ["nasderp.local"];
    };
    networkmanager.enable = true;

    # wireless.enable = true; # Enables wireless support via wpa_supplicant.

    # Configure network proxy if necessary
    # proxy = {
    #   default = "http://user:password@proxy:port/";
    #   noProxy = "127.0.0.1,localhost,internal.domain";
    # };

    # Open ports in the firewall.
    # firewall.allowedTCPPorts = [ ... ];
    # firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    # firewall.enable = false;
  };

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
  i18n.defaultLocale = "de_DE.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  # Configure console keymap
  console = {
    earlySetup = true; # Set virtual console in initrd
    useXkbConfig = true; # Configure the virtual console keymap from the xserver settings
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.thomas = {
    isNormalUser = true;
    description = "Thomas";
    extraGroups = ["networkmanager" "wheel" "plugdev" "docker"];
  };
  users.users.work = {
    isNormalUser = true;
    description = "Work Account";
    extraGroups = ["networkmanager" "wheel" "plugdev" "docker"];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Use zsh as default shell
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    xorg.xhost
    neovim
    gparted
    dropbox # does not work in home manager
    rclone
    usbutils
    udiskie
    udisks
    #(writeTextDir "share/sddm/themes/breeze/theme.conf.user" ''
    #  [General]
    #  background=${kdePackages.plasma-workspace-wallpapers}/share/wallpapers/MilkyWay/contents/images/5120x2880.png
    #'')
  ];

  # add steam support (no home-manager available)
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:
  services = {
    # Enable the X11 windowing system.
    # You can disable this if you're only using the Wayland session.
    xserver = {
      enable = true;
      # Configure keymap in X11
      xkb = {
        layout = "us";
        variant = "";
      };
      videoDrivers = ["nvidia"];
      # Enable the Cinnamon Desktop Environment
      displayManager = {
        lightdm.enable = true;
      };
      desktopManager.cinnamon.enable = true;
    };
    displayManager = {
      defaultSession = "cinnamon";
    };
    # Enable the KDE Plasma Desktop Environment.
    #displayManager = {
    #  sddm = {
    #    enable = true;
    #    wayland = {
    #      enable = true;
    #      compositor = "kwin";
    #    };
    #    autoNumlock = true;
    #  };
    #  autoLogin = {
    #    enable = false;
    #    user = "thomas";
    #  };
    #};
    #desktopManager.plasma6.enable = true;
    # Enable sound with pipewire.
    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      # If you want to use JACK applications, uncomment this
      #jack.enable = true;

      # use the example session manager (no others are packaged yet so this is enabled by default,
      # no need to redefine it in your config for now)
      #media-session.enable = true;
    };
    # add support for bluetooth
    blueman.enable = true;
    # add support for usb sticks
    gvfs.enable = true;
    udisks2.enable = true;
    # Enable the OpenSSH daemon.
    openssh.enable = true;
    # Enable CUPS to print documents.
    printing.enable = true;
    # Allow flatpak packages
    flatpak.enable = true;
    # Enable streaming service
    sunshine = {
      package = pkgs.sunshine.override {
        cudaSupport = true;
      };
      enable = true;
      autoStart = true;
      capSysAdmin = true;
      openFirewall = true;
    };
  };

  security.rtkit.enable = true;
  programs.ssh.startAgent = true;

  #security.wrappers.sunshine = {
  #  owner = "root";
  #  group = "root";
  #  capabilities = "cap_sys_admin+p";
  #  source = "${pkgs.sunshine}/bin/sunshine";
  #};

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
