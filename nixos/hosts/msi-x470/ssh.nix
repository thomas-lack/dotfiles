{...}: {
  services = {
    # Enable the OpenSSH daemon.
    openssh.enable = true;
  };

  security.rtkit.enable = true;
  programs.ssh.startAgent = true;
}
