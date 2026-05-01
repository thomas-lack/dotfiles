{config, ...}: {
  programs = {
    firefox = {
      enable = true;
      configPath = "${config.xdg.configHome}/mozilla/firefox";
      profiles.work = {};
    };

    librewolf = {
      enable = true;
    };
  };
}
