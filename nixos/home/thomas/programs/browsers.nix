{
  pkgs,
  unstablePkgs,
  ...
}: {
  programs = {
    firefox = {
      enable = true;
      package = pkgs.firefox;
      profiles.thomas = {};
    };

    librewolf = {
      enable = true;
      package = unstablePkgs.librewolf;
    };
  };

  home.packages = with pkgs; [
    tor-browser
  ];
}
