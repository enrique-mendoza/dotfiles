{config, ...}: {
  home.file.".config/git/attributes".text = ''
    * merge=mergiraf
  '';

  programs.git = {
    enable = true;

    settings = {
      alias = {
        br = "branch";
        ci = "commit";
        co = "checkout";
        df = "!git hist | fzf | awk '{print $2}' | xargs -I {} git diff {}^ {}";
        hist = "log --pretty=format:\"%Cgreen%h %Creset%cd %Cblue[%cn] %Creset%s%C(yellow)%d%C(reset)\" --graph --date=relative --decorate --all";
        llog = "log --graph --name-status --pretty=format:\"%C(red)%h %C(reset)(%cd) %C(green)%an %Creset%s %C(yellow)%d%Creset\" --date=relative";
        pl = "!git pull origin $(git rev-parse --abbrev-ref HEAD)";
        ps = "!git push origin $(git rev-parse --abbrev-ref HEAD)";
        st = "status";
      };
      branch.sort = "committerdate";
      color = {
        branch = "auto";
        diff = "auto";
        grep = "auto";
        interactive = "auto";
        status = "auto";
        ui = "auto";
      };
      core = {
        editor = "nvim";
        ignorecase = false;
      };
      credential.helper = "store";
      diff.submodule = "log";
      "filter \"lfs\"" = {
        clean = "git-lfs clean -- %f";
        process = "git-lfs filter-process";
        required = true;
        smudge = "git-lfs smudge -- %f";
      };
      ghq.root = "~/.ghq";
      gpg.format = "ssh";
      init.defaultBranch = "main";
      merge = {
        conflictStyle = "diff3";
        ff = false;
      };
      "merge \"mergiraf\"" = {
        driver = "mergiraf merge --git %O %A %B -s %S -x %X -y %Y -p %P -l %L";
        name = "mergiraf";
      };
      pull.ff = true;
      push.default = "simple";
      signing = {
        key = "${config.home.homeDirectory}/.ssh/id_ed25519.pub";
        signByDefault = false;
      };
      status.submoduleSummary = true;
      "url \"git@github.com:\"".insteadOf = "gh:";
    };
  };
}
