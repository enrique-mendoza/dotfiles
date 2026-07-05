{
  pkgs,
  nixvim,
  ...
}: {
  imports = [
    nixvim.homeModules.nixvim
    ./neovim/options.nix
    ./neovim/keymaps.nix
    ./neovim/colorscheme.nix
    ./neovim/plugins/default.nix
  ];

  programs.nixvim = {
    defaultEditor = true;
    enable = true;

    extraPackages = with pkgs; [
      ripgrep
      fd
      nodejs
      gcc
      tree-sitter
      alejandra
      google-java-format
      hadolint
      prettier
      stylua
    ];

    globals.mapleader = " ";
    viAlias = false;
    vimAlias = false;
  };
}
