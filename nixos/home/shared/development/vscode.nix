{...}: {
  programs.vscode = {
    enable = true;
    profiles = {
      default = {
        userSettings = {};
        keybindings = [];
      };
    };
  };
}
