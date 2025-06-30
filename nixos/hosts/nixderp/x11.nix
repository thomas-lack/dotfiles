{...}: {
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
        lightdm = {
          enable = true;
          background = "/usr/local/share/images/1358524.png";
        };
      };
      desktopManager.cinnamon.enable = true;
    };
    displayManager = {
      defaultSession = "cinnamon";
      #ly = {
      #  enable = true;
      #};
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
  };
}
