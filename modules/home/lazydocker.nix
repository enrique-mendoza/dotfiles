{pkgs, ...}: {
  home.packages = with pkgs; [lazydocker];

  home.file.".config/lazydocker/config.yml".text = ''
    gui:
      border: rounded
      theme:
        activeBorderColor:
          - '#89dceb'
          - bold
        inactiveBorderColor:
          - '#a6adc8'
        selectedLineBgColor:
          - '#313244'
        optionsTextColor:
          - '#89b4fa'
  '';
}
