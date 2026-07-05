{pkgs, ...}: {
  home.packages = with pkgs; [kitty];

  home.file.".config/kitty" = {
    force = true;
    source = ./kitty;
  };

  home.sessionVariables = {
    TERMINAL = "kitty";
  };
}
