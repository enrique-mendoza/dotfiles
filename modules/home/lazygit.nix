{...}: {
  programs.lazygit = {
    enable = true;
    settings = {
      confirmOnQuit = false;
      disableStartupPopups = true;
      gui = {
        authorColors."*" = "#b4befe";
        border = "rounded";
        nerdFontsVersion = "3";
        showBottomLine = false;
        showCommandLog = false;
        showFileTree = true;
        showIcons = false;
        showListFooter = false;
        showRandomTip = false;
        theme = {
          activeBorderColor = ["#89dceb" "bold"];
          inactiveBorderColor = ["#a6adc8"];
          optionsTextColor = ["#89b4fa"];
          selectedLineBgColor = ["#313244"];
          cherryPickedCommitBgColor = ["#45475a"];
          cherryPickedCommitFgColor = ["#89dceb"];
          unstagedChangesColor = ["#f38ba8"];
          defaultFgColor = ["#cdd6f4"];
          searchingActiveBorderColor = ["#f9e2af"];
        };
      };
      notARepository = "skip";
      os.editPreset = "nvim";
    };
  };
}
