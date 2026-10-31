{pkgs, ...}: {
  home.packages = with pkgs; [
    # audio control
    pavucontrol
    playerctl
    pulsemixer
    mpc
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
        pkgs.mpv.override {
          mpv-unwrapped = pkgs.mpv-unwrapped.override {
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
      network = {
        listenAddress = "127.0.0.1";
        port = 6601;
        startWhenNeeded = true;
      };
      extraConfig = ''
        audio_output {
        	type "pipewire"
        	name "PipeWire"
        }
      '';
    };
  };
}
