{pkgs, ...}: {
  home.packages = with pkgs; [pass];

  programs.password-store = {
    enable = true;
    settings = {
      PASSWORD_STORE_DIR = "$HOME/.password-store";
    };
  };
}
