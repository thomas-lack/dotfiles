{...}: {
  #home.packages = with pkgs; [
  #  pinentry-gtk2
  #];

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    pinentryFlavor = "tty";
    pinentryPackage = {
      _type = "literalMD";
      text = "pkgs.pinentry-tty";
    };
  };

  services.pcscd.enable = true;
}
