{...}: {
  #home.packages = with pkgs; [
  #  pinentry-gtk2
  #];

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    pinentryFlavor = "gtk2";
    pinentryPackage = {
      _type = "literalMD";
      text = "pkgs.pinentry-gtk2";
    };
  };

  services.pcscd.enable = true;
}
