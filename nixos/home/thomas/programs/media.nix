{pkgs, ...}: {
  home.packages = with pkgs; [
    # audio control
    pavucontrol
    playerctl
    pulsemixer
    #player
    mpc
    mpd
    # audio
    spotify
    abcde
    # images
    imv
    # video
    plex-desktop
  ];

  # enable plex user login
  xdg.portal.xdgOpenUsePortal = true;

  programs.mpv = {
    enable = true;
    defaultProfiles = ["gpu-hq"];
    package = (
      pkgs.mpv.override {
        mpv-unwrapped = pkgs.mpv-unwrapped.override {
          ffmpeg = pkgs.ffmpeg-full;
        };
      }
    );
  };

  services = {
    playerctld.enable = true;
    mpd = {
      enable = true;
      musicDirectory = "/mnt/nasderp/Musik";
      extraConfig = ''
        audio_output {
        	type "pulse"
        	name "My PulseAudio"
        }
      '';
      network.startWhenNeeded = true;
    };
  };
}
