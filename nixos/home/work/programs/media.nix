{pkgs, ...}: {
  home.packages = with pkgs; [
    # audio control
    pavucontrol
    playerctl
    pulsemixer
    mpc-cli
    mpd
    # audio
    spotify
    # images
    imv
    # video
  ];

  programs = {
    mpv = {
      enable = true;
      defaultProfiles = ["gpu-hq"];
      package = (
        pkgs.mpv-unwrapped.wrapper
        {
          mpv = pkgs.mpv-unwrapped.override {
            ffmpeg = pkgs.ffmpeg-full;
          };
        }
      );
    };
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
