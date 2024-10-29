#!/usr/bin/env sh

# Load and initialise completion system
autoload -Uz compinit
compinit

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Load Angular CLI autocompletion.
source <(ng completion script)

eval "$(zoxide init --cmd cd zsh)"
