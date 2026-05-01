{
  pkgs,
  config,
  ...
}: {
  programs = {
    firefox = {
      enable = true;
      configPath = "${config.xdg.configHome}/mozilla/firefox";
      profiles.thomas = {};
    };

    librewolf = {
      enable = true;
    };
  };

  home.packages = with pkgs; [
    tor-browser
  ];
}
