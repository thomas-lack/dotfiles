{...}: {
  services = {
    # Enable the OpenSSH daemon.
    openssh.enable = true;

    # disable gnome keyring ssh agent
    gnome.gcr-ssh-agent.enable = false;
  };

  security.rtkit.enable = true;
  programs.ssh.startAgent = true;
}
