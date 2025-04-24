#!/usr/bin/env sh

export EDITOR="nvim"
export TERMINAL="kitty"

export PATH="$HOME/go/bin:$HOME/.local/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# FNM
eval "$(fnm env --use-on-cd)"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
