{ config, ... }:

{
  # basic git configuration
  programs.git = {
    enable = true;
    userName = "Thomas Lack";
    userEmail = "post.thomas.lack@gmail.com";
  };
}
