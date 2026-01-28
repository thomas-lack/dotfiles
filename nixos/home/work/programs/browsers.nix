{
  pkgs,
  unstablePkgs,
  ...
}: {
  programs = {
    firefox = {
      enable = true;
      package = pkgs.firefox;
      profiles.work = {};
    };

    librewolf = {
      enable = true;
      package = unstablePkgs.librewolf;
    };
  };
}
