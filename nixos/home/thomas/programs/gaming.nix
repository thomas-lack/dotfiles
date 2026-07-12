{pkgs, ...}: {
  home.packages = with pkgs; [
    lutris
    # Directly use the pre-built Lutris package until openldap dependency is working
    #/nix/store/s74admfd3w6nwf801qdf804wkxvmamcj-lutris-0.5.22
    vice
    #/nix/store/7b20bhwighgigvwq40wdlkdbzkgda5p7-vice-3.10
    #(bottles.override {
    #  removeWarningPopup = true;
    #})
    # Directly use the pre-built Bottles package until openldap dependency is working
    /nix/store/8b6amkky52ivhjxq62vffvyaqhifsghc-bottles-63.2
    /nix/store/nnawqcd49f8nb7kqm72jcxay588bd8rj-nixos-render-docs-0.0
    protonup-rs
  ];
}
