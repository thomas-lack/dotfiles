{pkgs, ...}: {
  services = {
    # Enable streaming service
    sunshine = {
      package = pkgs.sunshine.override {
        cudaSupport = true;
      };
      enable = true;
      autoStart = true;
      capSysAdmin = true;
      openFirewall = true;
    };
  };

  #security.wrappers.sunshine = {
  #  owner = "root";
  #  group = "root";
  #  capabilities = "cap_sys_admin+p";
  #  source = "${pkgs.sunshine}/bin/sunshine";
  #};
}
