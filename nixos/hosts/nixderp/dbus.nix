{...}: {
  services = {
    # plank on x11 needs bamf
    bamf = {
      enable = true;
    };
  };
}
