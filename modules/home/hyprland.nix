{
  config,
  lib,
  pkgs,
  hyprland,
  ...
}: let
  hyprlandConfigDir = "${config.home.homeDirectory}/dotfiles/modules/home/hyprland";
in {
  imports = [hyprland.homeManagerModules.default];

  home.packages = [
    pkgs.xhost
    # polkit_gnome's binary lives in libexec, not bin; wrap it so
    # autostart.lua can call it by plain name.
    (pkgs.writeShellScriptBin "polkit-gnome-authentication-agent-1"
      "exec ${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1")
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    systemd.enable = false;
  };

  # Symlinked per-file (not per-directory) so home-manager can still
  # place its own generated files (e.g. hypr/.luarc.json) alongside ours.
  xdg.configFile = lib.listToAttrs (map (path: let
    relPath = lib.removePrefix "${toString ./hyprland}/" (toString path);
  in
    lib.nameValuePair "hypr/${relPath}" {
      source = config.lib.file.mkOutOfStoreSymlink "${hyprlandConfigDir}/${relPath}";
    }) (lib.filesystem.listFilesRecursive ./hyprland));
}
