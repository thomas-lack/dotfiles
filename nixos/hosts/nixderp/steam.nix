{...}: {
  # add steam support (no home-manager available)
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
    # Gamescope allows us to start a game in an optimized
    # micro compositor that may help you if the game you
    # are running has problems with upscaling or resolutions
    # on your specific desktop environment or your window manager.
    # Usage in Steam launch options:
    # gamescope %command%
    gamescopeSession.enable = true;
  };

  # Gamemode will greatly improve your game’s performance by
  # requesting a set of optimizations to be temporarily
  # applied to the OS and the game process.
  # Usage in Steam launch options:
  # gamemoderun %command%
  programs.gamemode.enable = true;
}
