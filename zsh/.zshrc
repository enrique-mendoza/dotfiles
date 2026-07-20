# ----------------------------------------------------
# Environment
# ----------------------------------------------------
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.cargo/bin:/opt/homebrew/bin:$PATH
export EDITOR="nvim"
export VISUAL="$EDITOR"
export TERMINAL="kitty"

# ----------------------------------------------------
# Shell Options
# ----------------------------------------------------
setopt auto_cd # Type a dir to cd
setopt extended_glob # Match ~ # ^
setopt glob_dots # Include dotfiles

# ----------------------------------------------------
# History
# ----------------------------------------------------
setopt append_history inc_append_history share_history # Better history
setopt hist_ignore_dups hist_ignore_space # Consecutive duplicates & commands starting with space are not saved

HISTSIZE=1000000
SAVEHIST=1000000

# ----------------------------------------------------
# Oh My Zsh
# ----------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="typewritten"
TYPEWRITTEN_PROMPT_LAYOUT="pure"
TYPEWRITTEN_RELATIVE_PATH="adaptive"
TYPEWRITTEN_CURSOR="terminal"

zstyle ':omz:update' mode reminder # just remind me to update when it's time

# Disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# Set descriptions format to enable group support
# NOTE: don't use escape sequences here, fzf-tab will ignore them
zstyle ':completion:*:descriptions' format '[%d]'
# Set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# Force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no
# Preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
# Make fzf-tab follow FZF_DEFAULT_OPTS.
# NOTE: this may lead to unexpected behavior since some flags break this plugin. See Aloxaf/fzf-tab#455.
zstyle ':fzf-tab:*' use-fzf-default-opts yes
# Switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'

plugins=(
  brew
  git
  fzf-tab
  mise
  vi-mode
  zsh-autosuggestions
  zsh-history-substring-search
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ----------------------------------------------------
# FZF
# ----------------------------------------------------
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --style minimal \
  --color 16 \
  --height 30% \
  --ansi \
  --preview='bat -p --color=always {}' \
  --highlight-line \
  --info=inline-right \
  --layout=reverse \
  --color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
  --color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
  --color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
  --color=selected-bg:#45475A \
  --color=border:#6C7086,label:#CDD6F4
"
export FZF_CTRL_R_OPTS="--info inline --no-sort --no-preview"

# ----------------------------------------------------
# Docker
# ----------------------------------------------------
alias dc='docker compose'
alias dl='docker container logs --tail=100'
alias dls='docker container ls --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'

function dfd() {
  local compose_file="$1"
  docker compose -f "$compose_file" down -v
}

function dfu() {
  local compose_file="$1"
  docker compose -f "$compose_file" up
}

# ----------------------------------------------------
# Fastfetch
# ----------------------------------------------------
alias ff="fastfetch"

# ----------------------------------------------------
# FZF Helpers
# ----------------------------------------------------
# fd - cd to selected directory including hidden directories.
function fd() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf --multi --preview 'eza -1 --color=always {}') && cd "$dir"
}

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
function fe() {
  IFS=$'\n' files=($(fzf --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR} "${files[@]}"
}

# Using ripgrep combined with preview
# find-in-file - usage: fif <searchTerm>
function fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for\!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}

# ----------------------------------------------------
# Git
# ----------------------------------------------------
alias g="git"
alias ga="git add"
alias gap="ga --patch"
alias gb="git branch"
alias gba="gb --all"
alias gc="git commit"
alias gca="gc --amend --no-edit"
alias gce="gc --amend"
alias gcl="git clone --recursive"
alias gco="git checkout"
alias gd="git diff --output-indicator-new=' ' --output-indicator-old=' '"
alias gds="gd --staged"
alias gi="git init"
alias gm="git merge"
alias gn="git checkout -b" # new branch
alias gp="git push"
alias gr="git reset"
alias gs="git status --short"
alias gu="git pull"

# ----------------------------------------------------
# Grep
# ----------------------------------------------------
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias grep="grep --color=auto"

# ----------------------------------------------------
# Lazy
# ----------------------------------------------------
alias lg="lazygit"
alias lzd="lazydocker"

# ----------------------------------------------------
# ls (eza)
# ----------------------------------------------------
alias l="eza -F --icons --color=always --group-directories-first"
alias l.="eza -a | grep -E '^\.'"
alias la="eza -a --icons --color=always --group-directories-first"
alias ll="eza -alF --icons --color=always --group-directories-first"
alias ls="eza --icons --color=always --group-directories-first" # exa is unmaintained, use eza instead
alias lt="eza --icons --color=always --tree --level=2 --long"

# ----------------------------------------------------
# Password Manager
# ----------------------------------------------------
alias pmc="pass show -c"
alias pms="pass show"

# ----------------------------------------------------
# System Utils
# ----------------------------------------------------
alias df="df -h" # human-readable sizes
alias eatcpu="ps auxf | sort -nr -k 3 | head -5" # Get top process eating cpu

# ----------------------------------------------------
# Tmux
# ----------------------------------------------------
alias t="tmux attach || tmux new -s personal"

# ----------------------------------------------------
# Yazi
# ----------------------------------------------------
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

# ----------------------------------------------------
# Zsh Config
# ----------------------------------------------------
alias zshconfig="nvim ~/.zshrc"

# ----------------------------------------------------
# Completion
# ----------------------------------------------------
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Load Angular CLI autocompletion
source <(ng completion script)

# Zoxide
eval "$(zoxide init --cmd cd zsh)"

# ----------------------------------------------------
# Key Bindings
# ----------------------------------------------------
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey ' ' magic-space

# ----------------------------------------------------
# SDKMAN
# ----------------------------------------------------
# Must load last for SDKMAN to work correctly.
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
