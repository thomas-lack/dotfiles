{pkgs, ...}: {
  home.packages = with pkgs; [
    nodejs_24
    prettier
    eslint
  ];

  programs.bun = {
    enable = true;
    settings = {
      smol = true;
      telemetry = false;
    };
  };
}
