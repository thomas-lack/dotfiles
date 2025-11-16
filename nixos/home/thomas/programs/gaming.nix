{
  pkgs,
  unstablePkgs,
  ...
}: {
  home.packages = [
    unstablePkgs.lutris
    pkgs.vice
    (unstablePkgs.bottles.override {
      removeWarningPopup = true;
      bottlesExtraLibraries = [pkgs.gnutls];
    })
    unstablePkgs.protonup-rs
  ];
}
