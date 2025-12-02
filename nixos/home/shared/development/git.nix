{pkgs, ...}: {
  # basic git configuration
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Thomas Lack";
        email = "post.thomas.lack@gmail.com";
      };
      alias = {
        co = "checkout";
        st = "status";
      };
    };
  };

  # additional tools
  home.packages = with pkgs; [
    lazygit
    tig
  ];
}
