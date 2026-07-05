{...}: {
  home.file.".claude/settings.json".text = builtins.toJSON {
    editorMode = "vim";
    statusLine = {
      command = "npx ccusage@latest statusline";
      type = "command";
    };
    theme = "auto";
  };
}
