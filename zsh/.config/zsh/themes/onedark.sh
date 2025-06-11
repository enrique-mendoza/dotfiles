#!/usr/bin/env sh

export FZF_DEFAULT_OPTS="
  --style minimal 
  --color 16 
  --layout=reverse 
  --height 30% 
  --preview='bat -p --color=always {}'
  --color=bg+:#3e4451,bg:#282c34,spinner:#61afef,hl:#c678dd
  --color=fg:#abb2bf,header:#56b6c2,info:#e5c07b,pointer:#98c379
  --color=marker:#e06c75,fg+:#abb2bf,prompt:#61afef,hl+:#c678dd
"
