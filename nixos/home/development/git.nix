{pkgs, ...}: {
  # basic git configuration
  programs.git = {
    enable = true;
    userName = "Thomas Lack";
    userEmail = "post.thomas.lack@gmail.com";
  };

  # additional tools
  home.packages = with pkgs; [
    lazygit
    tig
  ];
}
