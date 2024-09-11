{...}: {
  programs.kitty = {
    enable = true;
    font = {
      #name = "FiraCode Nerd Font Mono";
      name = "Cascadia Code";
      size = 12;
    };
    theme = "Catppuccin-Macchiato";
    settings = {
      term = "xterm-256color";
      copy_on_select = "clipboard";
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";
      disable_ligatures = "never";
      window_padding_width = "0 5 5 5";
      cursor_shape = "block";
      url_style = "curly";
      open_url_with = "default";
      url_prefixes = "file ftp ftps gemini git gopher http https irc ircs kitty mailto news sftp ssh";
      detect_urls = "yes";
      mouse_map = "right press ungrabbed paste_from_selection";
    };
  };
}
