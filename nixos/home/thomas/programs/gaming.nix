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
    })
    unstablePkgs.protonup-rs
  ];
}
