{pkgs, ...}: let
  tmuxFzfPath = "${pkgs.tmuxPlugins.tmux-fzf}/share/tmux-plugins/tmux-fzf";
in {
  programs.tmux = {
    enable = true;

    extraConfig =
      (builtins.readFile ./tmux/tmux.conf)
      + ''
        bind-key w run-shell -b "${tmuxFzfPath}/scripts/window.sh switch"
        bind-key s run-shell -b "${tmuxFzfPath}/scripts/session.sh switch"
      '';

    plugins = with pkgs.tmuxPlugins; [
      sensible
      yank
      prefix-highlight
      vim-tmux-navigator
      {
        plugin = catppuccin;
        extraConfig = ''
          set -g @catppuccin_flavor "mocha"
          set -g @catppuccin_window_status_style "rounded"
          set -g status-right-length 100
          set -g status-left-length 100
          set -g status-left ""
          set -g status-right "#{E:@catppuccin_status_application}"
          set -ag status-right "#{E:@catppuccin_status_session}"
          set -ag status-right "#{E:@catppuccin_status_uptime}"
          set -g @catppuccin_window_default_text " #W"
          set -g @catppuccin_window_text " #W"
          set -g @catppuccin_window_current_text " #W"
        '';
      }
      {
        plugin = tmux-fzf;
        extraConfig = ''
          setenv -g TMUX_FZF_SWITCH_CURRENT "1"
        '';
      }
      {
        plugin = resurrect;
        extraConfig = "set -g @resurrect-capture-pane-contents 'on'";
      }
      {
        plugin = continuum;
        extraConfig = "set -g @continuum-restore 'on'";
      }
    ];

    shell = "${pkgs.zsh}/bin/zsh";
  };

  home.file.".config/tmux/scripts/copy_mode_with_line_numbers.sh" = {
    executable = true;
    source = ./tmux/scripts/copy_mode_with_line_numbers.sh;
  };
}
