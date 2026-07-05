{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/audio.nix
    ../../modules/nixos/boot.nix
    ../../modules/nixos/docker.nix
    ../../modules/nixos/fonts.nix
    ../../modules/nixos/hardware.nix
    ../../modules/nixos/hyprland.nix
    ../../modules/nixos/networking.nix
    ../../modules/nixos/ssh.nix
  ];

  environment.systemPackages = with pkgs; [
    git
    vim
  ];

  i18n.defaultLocale = "en_US.UTF-8";

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  nix.registry.nixcfg.to = {
    type = "path";
    path = "/home/asa/dotfiles";
  };

  nix.settings = {
    auto-optimise-store = true;
    experimental-features = ["nix-command" "flakes"];
    extra-substituters = ["https://noctalia.cachix.org"];
    extra-trusted-public-keys = ["noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="];
    trusted-users = ["root" "asa"];
  };

  nixpkgs.config.allowUnfree = true;

  programs.zsh.enable = true;

  system.stateVersion = "26.05";

  time.timeZone = "America/Mexico_City";

  users.users.asa = {
    description = "Enrique Mendoza";
    extraGroups = ["networkmanager" "wheel" "video" "input"];
    isNormalUser = true;
    shell = pkgs.zsh;
  };
}
