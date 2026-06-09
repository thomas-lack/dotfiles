{pkgs, ...}: {
  home.packages = with pkgs; [
    #lutris
    # Directly use the pre-built Lutris package until openldap dependency is working
    /nix/store/s74admfd3w6nwf801qdf804wkxvmamcj-lutris-0.5.22
    vice
    (bottles.override {
      removeWarningPopup = true;
    })
    # Directly use the pre-built Bottles package until openldap dependency is working
    #/nix/store/8b6amkky52ivhjxq62vffvyaqhifsghc-bottles-63.2
    protonup-rs
  ];
}
