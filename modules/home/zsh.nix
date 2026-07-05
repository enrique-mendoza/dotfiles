{pkgs, ...}: {
  programs.zsh = {
    autosuggestion.enable = true;
    enable = true;
    enableCompletion = true;

    envExtra = ''
      export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
      export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
      export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
      export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
        --style minimal \
        --height 30% \
        --ansi \
        --preview='bat -p --color=always {}' \
        --highlight-line \
        --info=inline-right \
        --layout=reverse
      "
      export FZF_CTRL_R_OPTS="--style minimal \
        --color 16 \
        --info inline \
        --no-sort \
        --no-preview
      "
    '';

    history = {
      append = true;
      ignoreDups = true;
      ignoreSpace = true;
      save = 1000000;
      share = true;
      size = 1000000;
    };

    initContent = ''
      # Better history
      setopt append_history inc_append_history share_history
      setopt auto_cd
      setopt extended_glob
      setopt glob_dots

      # Completion styling
      zstyle ':completion:*:git-checkout:*' sort false
      zstyle ':completion:*:descriptions' format '[%d]'
      zstyle ':completion:*' list-colors ''${(s.:.)LS_COLORS}
      zstyle ':completion:*' menu no

      # fzf-tab
      zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
      zstyle ':fzf-tab:*' use-fzf-default-opts yes
      zstyle ':fzf-tab:*' switch-group '<' '>'

      # History substring search keybindings
      bindkey '^[[A' history-substring-search-up
      bindkey '^[[B' history-substring-search-down

      # Magic space
      bindkey ' ' magic-space

      # Docker
      function dfu() {
        local compose_file="$1"
        docker compose -f "$compose_file" up
      }

      function dfd() {
        local compose_file="$1"
        docker compose -f "$compose_file" down -v
      }

      # FZF functions
      function fe() {
        IFS=$'\n' files=($(fzf --query="$1" --multi --select-1 --exit-0))
        [[ -n "$files" ]] && ''${EDITOR} "''${files[@]}"
      }

      function fd() {
        local dir
        dir=$(find ''${1:-.} -type d 2> /dev/null | fzf --multi) && cd "$dir"
      }

      function fif() {
        if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
        rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
      }

      # Nix devshell
      function ndev() {
        nix develop "nixcfg#$1"
      }

      function mknenv() {
        echo "use flake nixcfg#$1" > .envrc
        direnv allow
      }

      # Yazi shell wrapper
      function y() {
        local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
        yazi "$@" --cwd-file="$tmp"
        IFS= read -r -d "" cwd < "$tmp"
        [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
        rm -f -- "$tmp"
      }
    '';

    oh-my-zsh = {
      enable = true;
      plugins = ["git" "vi-mode"];
      theme = "gentoo";
    };

    plugins = [
      {
        name = "fzf-tab";
        src = "${pkgs.zsh-fzf-tab}/share/fzf-tab";
      }
      {
        name = "zsh-history-substring-search";
        src = "${pkgs.zsh-history-substring-search}/share/zsh-history-substring-search";
      }
    ];

    shellAliases = {
      # fastfetch
      ff = "fastfetch";

      # eza
      l = "eza -F --icons --color=always --group-directories-first";
      "l." = "eza -a | grep -E '^\\.'";
      la = "eza -a --icons --color=always --group-directories-first";
      ll = "eza -alF --icons --color=always --group-directories-first";
      ls = "eza --icons --color=always --group-directories-first";
      lt = "eza --icons --color=always --tree --level=2 --long";

      # git
      g = "git";
      ga = "git add";
      gap = "git add --patch";
      gb = "git branch";
      gba = "git branch --all";
      gc = "git commit";
      gca = "git commit --amend --no-edit";
      gce = "git commit --amend";
      gcl = "git clone --recursive";
      gco = "git checkout";
      gd = "git diff --output-indicator-new=' ' --output-indicator-old=' '";
      gds = "git diff --staged --output-indicator-new=' ' --output-indicator-old=' '";
      gi = "git init";
      gl = "git log --graph --all --pretty=format:'%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n'";
      gm = "git merge";
      gn = "git checkout -b";
      gp = "git push";
      gr = "git reset";
      gs = "git status --short";
      gu = "git pull";

      # grep
      egrep = "egrep --color=auto";
      fgrep = "fgrep --color=auto";
      grep = "grep --color=auto";

      # docker
      dc = "docker compose";
      dl = "docker container logs --tail=100";
      dls = "docker container ls --format \"table {{.Names}}\t{{.Status}}\t{{.Ports}}\"";

      # lazy
      lg = "lazygit";
      lzd = "lazydocker";

      # system
      df = "df -h";
      eatcpu = "ps auxf | sort -nr -k 3 | head -5";
      free = "free -m";

      # password manager
      pmc = "pass show -c";
      pms = "pass show";

      # nixos
      flake-update = "nix flake update nixcfg";
      rebuild = ''sudo nixos-rebuild switch --flake "nixcfg#desktop"'';
      rebuild-dry = ''sudo nixos-rebuild dry-activate --flake "nixcfg#desktop"'';
      rebuild-test = ''sudo nixos-rebuild test --flake "nixcfg#desktop"'';

      # tmux
      t = "tmux attach || tmux new -s personal";

      # misc
      zshconfig = "nvim ~/.zshrc";
    };

    syntaxHighlighting.enable = true;
  };
}
