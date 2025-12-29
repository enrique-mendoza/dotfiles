#!/usr/bin/env sh

# omz
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="thunar ~/.oh-my-zsh"

# battery status
# alias cbst="upower -i $(upower -e | grep BAT)"

# fzf
# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  IFS=$'\n' files=($(fzf --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR} "${files[@]}"
}

# fd - cd to selected directory including hidden directories.
fd() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf --multi) && cd "$dir"
}

# using ripgrep combined with preview
# find-in-file - usage: fif <searchTerm>
fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for\!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}

# l (exa is unmaintained, use eza instead)
alias ls="eza --icons --color=always --group-directories-first"
alias ll="eza -alF --icons --color=always --group-directories-first"
alias la="eza -a --icons --color=always --group-directories-first"
alias l="eza -F --icons --color=always --group-directories-first"
alias l.="eza -a | grep -E '^\.'"
alias lt="eza --icons --color=always --tree --level=2 --long"

# git
alias g="git"
alias ga="git add"
alias gap="ga --patch"
alias gb="git branch"
alias gba="gb --all"
alias gc="git commit"
alias gca="gc --amend --no-edit"
alias gce="gc --amend"
alias gco="git checkout"
alias gcl="git clone --recursive"
alias gd="git diff --output-indicator-new=' ' --output-indicator-old=' '"
alias gds="gd --staged"
alias gi="git init"
alias gl="git log --graph --all --pretty=format:'%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n'"
alias gm="git merge"
alias gn="git checkout -b" # new branch
alias gp="git push"
alias gr="git reset"
alias gs="git status --short"
alias gu="git pull"

# gcm() { git commit --message "$*"; }

# safety cmds
alias cp='cp --interactive'
alias mv='mv --interactive'

# colorize grep output (good for log files)
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias grep="grep --color=auto"

# easier to read disk
alias df="df -h" # human-readable sizes
alias free="free -m" # show sizes in MB

# most commands used
alias mcu="history | awk '{print $2}' | sort | uniq -c | sort -nr | head -10"

# docker
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dl='docker logs --tail=100'
alias dc='docker compose'

# lazygit
alias lg="lazygit"

# lazydocker
alias lzd="sudo lazydocker"

# list packages
alias pacpack="pacman -Qet | awk '{print $1}'"

# get top process eating cpu
alias eatcpu="ps auxf | sort -nr -k 3 | head -5"

# password manager
alias pmc="pass show -c"
alias pms="pass show"

# pomodoro
alias wo="pomodoro 'work'"
alias br="pomodoro 'break'"
