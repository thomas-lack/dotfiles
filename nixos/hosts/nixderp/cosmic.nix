{
  pkgs,
  unstablePkgs,
  ...
}: {
  services = {
    desktopManager.cosmic = {
      enable = true;
      package = unstablePkgs.cosmic;
    };
    system76-scheduler.enable = true;
  };

  #environment.cosmic.excludePackages = with pkgs; [
  #  cosmic-edit
  #  cosmic-files
  #];

  environment.sessionVariables.COSMIC_DATA_CONTROL_ENABLED = 1;
}
