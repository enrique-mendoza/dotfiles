#!/usr/bin/env sh

export EDITOR="nvim"
export TERMINAL="alacritty"

export PATH="$HOME/.local/bin":$PATH

# FZF Plugin
export FZF_DEFAULT_OPTS='--color=fg:#ebfafa,bg:#282a36,hl:#37f499 --color=fg+:#ebfafa,bg+:#212337,hl+:#37f499 --color=info:#f7c67f,prompt:#04d1f9,pointer:#7081d0 --color=marker:#7081d0,spinner:#f7c67f,header:#323449'

# fnm
FNM_PATH="/home/kike/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/kike/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
