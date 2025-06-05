{pkgs, ...}: {
  home.packages = with pkgs; [
    ulauncher
  ];

  systemd.user.services = {
    ulauncher = {
      Unit = {
        Description = "Linux Application Launcher";
        Documentation = "https://ulauncher.io";
      };
      Install = {
        WantedBy = ["graphical-session.target"];
      };
      Service = {
        ExecStart = "${pkgs.ulauncher}/bin/ulauncher --hide-window";
        Environment = ["GDK_BACKEND=x11"];
        Type = "simple";
        Restart = "always";
        RestartSec = 1;
      };
    };
  };
}
