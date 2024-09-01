{pkgs, ...}: {
  programs = {
    firefox = {
      enable = true;
      package = pkgs.firefox;
      profiles.thomas = {};
    };

    librewolf = {
      enable = true;
      package = pkgs.librewolf;
    };
  };

  home.packages = with pkgs; [
    tor-browser
  ];
}
