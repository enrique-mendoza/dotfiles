# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.cargo/bin:$HOME/.opencode/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="daveverwer"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

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
# To make fzf-tab follow FZF_DEFAULT_OPTS.
# NOTE: This may lead to unexpected behavior since some flags break this plugin. See Aloxaf/fzf-tab#455.
zstyle ':fzf-tab:*' use-fzf-default-opts yes
# Switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  fzf-tab
  mise
  vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-history-substring-search
)

setopt append_history inc_append_history share_history # Better history
setopt auto_cd # Type a dir to cd
setopt extended_glob # Match ~ # ^
setopt glob_dots # Include dotfiles

HISTSIZE=1000000
SAVEHIST=1000000
HISTCONTROL=ignoreboth # Consecutive duplicates & commands starting with space are not saved

source $ZSH/oh-my-zsh.sh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey ' ' magic-space

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

export EDITOR="nvim"
export TERMINAL="kitty"

# FZF
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --style minimal \
  --color 16 \
  --height 30% \
  --ansi \
  --preview='bat -p --color=always {}' \
  --highlight-line \
  --info=inline-right \
  --layout=reverse \
  --color=bg+:#3c3836,bg:#282828,spinner:#8ec07c,hl:#d3869b \
  --color=fg:#ebdbb2,header:#8ec07c,info:#fe8019,pointer:#8ec07c \
  --color=marker:#8ec07c,fg+:#ebdbb2,prompt:#fb4934,hl+:#d3869b
"
export FZF_CTRL_R_OPTS="--style minimal \
  --color 16 \
  --info inline \
  --no-sort \
  --no-preview
"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# FZF
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

# Using ripgrep combined with preview
# find-in-file - usage: fif <searchTerm>
fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for\!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}

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

# Colorize grep output (good for log files)
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias grep="grep --color=auto"

# Docker
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dl='docker logs --tail=100'
alias dc='docker-compose'

dfu() {
  local compose_file="$1"
  dc -f "$compose_file" up
}

dfd() {
  local compose_file="$1"
  dc -f "$compose_file" -v down
}

# ls (exa is unmaintained, use eza instead)
alias ls="eza --icons --color=always --group-directories-first"
alias ll="eza -alF --icons --color=always --group-directories-first"
alias la="eza -a --icons --color=always --group-directories-first"
alias l="eza -F --icons --color=always --group-directories-first"
alias l.="eza -a | grep -E '^\.'"
alias lt="eza --icons --color=always --tree --level=2 --long"

# Lazy
alias lg="lazygit"
alias lzd="lazydocker"

# System Utils
alias df="df -h" # human-readable sizes
alias free="free -m" # show sizes in MB
alias eatcpu="ps auxf | sort -nr -k 3 | head -5" # Get top process eating cpu

# Pacman
alias paci="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias pacpacks="pacman -Qet | awk '{print $1}' > arch_dms_$(date +%m%d%Y)"
alias pacr="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"

# Password manager
alias pmc="pass show -c"
alias pms="pass show"

# Fastfetch
alias ff="fastfetch"

# tty-clock
alias tclock="tty-clock -c -b -s"

# tmux
alias t="tmux attach || tmux new -s personal"

# Yazi Shell Wrapper
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# Autocompletions
# Load Angular CLI autocompletion.
source <(ng completion script)

# Load and initialise completion system
autoload -Uz compinit
compinit

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Zoxide
eval "$(zoxide init --cmd cd zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
