#!/usr/bin/env sh

# omz
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="thunar ~/.oh-my-zsh"

# battery status
# alias cbst="upower -i $(upower -e | grep BAT)"

# l (exa is unmaintained, use eza instead)
alias ls="eza --icons --color=always --group-directories-first"
alias ll="eza -alF --icons --color=always --group-directories-first"
alias la="eza -a --icons --color=always --group-directories-first"
alias l="eza -F --icons --color=always --group-directories-first"
alias l.="eza -a | grep -E '^\.'"
alias tree="eza --icons --color=always --tree --level=2 --longs

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

gcm() { git commit --message "$*" }

# colorize grep output (good for log files)
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias grep="grep --color=auto"

# easier to read disk
alias df="df -h" # human-readable sizes
alias free="free -m" # show sizes in MB

# most commands used
alias mcu="history | awk '{print $2}' | sort | uniq -c | sort -nr | head -10"

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

# maven
alias mvn-8="JAVA_HOME=/usr/lib/jvm/java-8-amazon-corretto && mvn"
alias mvn-11="JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto && mvn"
alias mvnds="mvn dependency:sources dependency:resolve -Dclassifier=javadoc"

# spring projects
alias spring-8="JAVA_HOME=/usr/lib/jvm/java-8-amazon-corretto && mvn clean install -DskipTests spring-boot:run"
alias spring-11="JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto && mvn clean install -DskipTests spring-boot:run"
alias spring-17="JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto && mvn clean install -DskipTests spring-boot:run"

# curl
alias cget="~/.config/custom-scripts/utils/curl/get_request.sh"
alias cpost="~/.config/custom-scripts/utils/curl/post_request.sh"
alias cpostf="~/.config/custom-scripts/utils/curl/post_form_data_request.sh"
alias cput="~/.config/custom-scripts/utils/curl/put_request.sh"

# jq
alias jqfk="~/.config/custom-scripts/utils/jq/filter_by_key.sh"
