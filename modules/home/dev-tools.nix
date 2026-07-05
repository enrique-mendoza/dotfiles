{pkgs, ...}: {
  home.packages = with pkgs; [
    ast-grep
    claude-code
    gcc
    git-lfs
    lua5_1
    luarocks
    mergiraf
    mermaid-cli
    tectonic
    tesseract
    tree-sitter
  ];

  programs.bat = {
    enable = true;
    themes = {
      "Catppuccin Mocha" = {
        src = ./bat/themes;
        file = "Catppuccin Mocha.tmTheme";
      };
    };
    config = {
      theme = "Catppuccin Mocha";
    };
  };

  programs.fzf = {
    colors = {
      "bg" = "#1E1E2E";
      "bg+" = "#313244";
      "spinner" = "#F5E0DC";
      "hl" = "#F38BA8";
      "fg" = "#CDD6F4";
      "header" = "#F38BA8";
      "info" = "#CBA6F7";
      "pointer" = "#F5E0DC";
      "marker" = "#B4BEFE";
      "fg+" = "#CDD6F4";
      "prompt" = "#CBA6F7";
      "hl+" = "#F38BA8";
      "selected-bg" = "#45475A";
      "border" = "#6C7086";
      "label" = "#CDD6F4";
    };
    defaultOptions = [
      "--style minimal"
      "--color 16"
      "--height 30%"
      "--ansi"
      "--preview='bat -p --color=always {}'"
      "--highlight-line"
      "--info=inline-right"
      "--layout=reverse"
    ];
    changeDirWidget.options = [
      "--preview 'eza -1 --color=always {}'"
    ];
    historyWidget.options = [
      "--style minimal"
      "--color 16"
      "--info inline"
      "--no-sort"
      "--no-preview"
    ];
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    options = [
      "--cmd cd"
    ];
  };
}
