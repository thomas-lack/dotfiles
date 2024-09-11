{pkgs, ...}: {
  home.packages = with pkgs; [
    nodePackages.nodejs
    nodePackages.prettier
    nodePackages.eslint
  ];

  programs.bun = {
    enable = true;
    settings = {
      smol = true;
      telemetry = false;
    };
  };
}
