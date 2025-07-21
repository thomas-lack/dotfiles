{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    terminal = "screen-256color";
    keyMode = "vi";
    mouse = true;
    historyLimit = 100000;
    clock24 = true;

    plugins = with pkgs; [
      {
        plugin = tmuxPlugins.catppuccin;
        extraConfig = ''
          set -g @catppuccin_flavour 'macchiato'
          set -g @catppuccin_window_tabs_enabled on
          set -g @catppuccin_date_time "%H:%M"
        '';
      }
      tmuxPlugins.sensible
      tmuxPlugins.yank
    ];

    extraConfig = ''
      # set true color
      set-option -sa terminal-overrides ",xterm*:Tc"

      # reduce ESC scan rate
      set -sg escape-time 10

      # start windows and panes on 1, not 0
      set -g base-index 1
      set -g pane-base-index 1
      set-window-option -g pane-base-index 1
      set-option -g renumber-windows on

      # enable yazi image preview
      set -g allow-passthrough on
      set -ga update-environment TERM
      set -ga update-environment TERM_PROGRAM

      # switch panes with <prefix>+hjkl
      bind-key h select-pane -L
      bind-key l select-pane -R
      bind-key k select-pane -U
      bind-key j select-pane -D

      # switch windows with shift alt vim keys
      bind -n M-H previous-window
      bind -n M-L next-window

      # kill window at once
      bind q killw

      # key bindings vim copy mode
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
      bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel
    '';
  };
}
