{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    curl
    dragon-drop
    eza
    fastfetch
    fd
    ffmpeg
    ffmpegthumbnailer
    grim
    imagemagick
    jq
    localsend
    ripgrep
    slurp
    trash-cli
    unzip
    unar
    wget
    wl-clipboard
    wl-screenrec
    zbar
    zip
    python3Packages.pygobject3
  ];

  home.file.".config/eza".source = ./eza;
  home.file.".config/fastfetch".source = ./fastfetch;

  home.sessionVariables = {
    EZA_CONFIG_DIR = "${config.home.homeDirectory}/.config/eza";
  };
}
