{...}: {
  imports = [
    ../../modules/home/btop.nix
    ../../modules/home/claude-code.nix
    ../../modules/home/cursor.nix
    ../../modules/home/dev-tools.nix
    ../../modules/home/utils.nix
    ../../modules/home/direnv.nix
    ../../modules/home/firefox.nix
    ../../modules/home/git.nix
    ../../modules/home/gpg.nix
    ../../modules/home/hyprland.nix
    ../../modules/home/kitty.nix
    ../../modules/home/lazydocker.nix
    ../../modules/home/lazygit.nix
    ../../modules/home/nb.nix
    ../../modules/home/neovim.nix
    ../../modules/home/pass.nix
    ../../modules/home/tmux.nix
    ../../modules/home/yazi.nix
    ../../modules/home/zsh.nix
  ];

  home.homeDirectory = "/home/asa";
  home.stateVersion = "26.05";
  home.username = "asa";

  programs.git.settings = {
    github.user = "enrique-mendoza";
    user = {
      email = "luis.e.1998@hotmail.com";
      name = "Enrique Mendoza";
    };
  };

  programs.home-manager.enable = true;
}
