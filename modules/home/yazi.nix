{
  pkgs,
  yazi,
  ...
}: {
  programs.yazi = {
    enable = true;
    package = yazi.packages.${pkgs.stdenv.hostPlatform.system}.default.override {
      _7zz = pkgs._7zz-rar;
    };
    enableZshIntegration = true;

    plugins = {
      chmod = pkgs.yaziPlugins.chmod;
      compress = pkgs.yaziPlugins.compress;
      diff = pkgs.yaziPlugins.diff;
      git = pkgs.yaziPlugins.git;
      lazygit = pkgs.yaziPlugins.lazygit;
      mount = pkgs.yaziPlugins.mount;
      "recycle-bin" = pkgs.yaziPlugins.recycle-bin;
      restore = pkgs.yaziPlugins.restore;
      "smart-enter" = pkgs.yaziPlugins.smart-enter;
      "smart-paste" = pkgs.yaziPlugins.smart-paste;
      sudo = pkgs.yaziPlugins.sudo;
    };
  };

  xdg.configFile = {
    "yazi/init.lua".source = ./yazi/init.lua;
    "yazi/keymap.toml".source = ./yazi/keymap.toml;
    "yazi/theme.toml".source = ./yazi/theme.toml;
    "yazi/syntect".source = ./yazi/syntect;
    "yazi/yazi.toml".source = ./yazi/yazi.toml;
  };
}
