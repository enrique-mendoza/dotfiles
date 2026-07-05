{ ... }:

{
  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;

  services.displayManager.ly = {
    enable = true;
  };
}
