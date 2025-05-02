#!/usr/bin/env sh

# Custom lists (exa is unmaintained, use eza instead)
alias ls="eza --icons --color=always --group-directories-first"
alias ll="eza -alF --icons --color=always --group-directories-first"
alias la="eza -a --icons --color=always --group-directories-first"
alias l="eza -F --icons --color=always --group-directories-first"
alias l.="eza -a | egrep '^\.'"
alias tree="eza --icons --color=always --tree --level=2 --long"

# Git
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

gcm() { git commit --message "$*" }

# Confirm before overwriting something
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Colorize grep output (good for log files)
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias grep="grep --color=auto"

# Easier to read disk
alias df="df -h" # human-readable sizes
alias free="free -m" # show sizes in MB

# Most commands used
alias mcu="history | awk '{print $2}' | sort | uniq -c | sort -nr | head -10"

# Git
alias g="git"

# Kitty
alias icat="kitty +kitten icat"

# Lazygit
alias lg="lazygit"

# Lazydocker
alias lzd="sudo lazydocker"

# curl
alias cget="~/.config/custom-scripts/utils/curl/get_request.sh"
alias cpost="~/.config/custom-scripts/utils/curl/post_request.sh"
alias cpostf="~/.config/custom-scripts/utils/curl/post_form_data_request.sh"
alias cput="~/.config/custom-scripts/utils/curl/put_request.sh"

# jq
alias jqfk="~/.config/custom-scripts/utils/jq/filter_by_key.sh"
