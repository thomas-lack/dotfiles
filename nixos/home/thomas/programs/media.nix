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
    plex-media-player
  ];

  programs.mpv = {
    enable = true;
    defaultProfiles = ["gpu-hq"];
    scripts = [pkgs.mpvScripts.mpris];
  };

  services = {
    playerctld.enable = true;
    mpd = {
      enable = true;
      musicDirectory = "$HOME/Musik";
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
