#!/usr/bin/env sh

export EDITOR="nvim"
export TERMINAL="kitty"

# FZF
export FZF_CTRL_R_OPTS="--style minimal --color 16 --info inline --no-sort --no-preview" # separate opts for history widget

PATH="/home/kike/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/kike/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/kike/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/kike/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/kike/perl5"; export PERL_MM_OPT;

# fnm
FNM_PATH="/home/kike/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/kike/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
