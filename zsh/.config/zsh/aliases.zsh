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
alias tree="eza --icons --color=always --tree --level=2 --long"

# git
alias g='git'
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

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
alias lg='lazygit'

# lazydocker
alias lzd='sudo lazydocker'

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
alias mvn8="JAVA_HOME=/usr/lib/jvm/java-8-amazon-corretto && mvn"
alias mvn11="JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto && mvn"
alias mvnds="mvn dependency:sources dependency:resolve -Dclassifier=javadoc"

# spring projects
alias spring8="JAVA_HOME=/usr/lib/jvm/java-8-amazon-corretto && mvn clean install -DskipTests spring-boot:run"
alias spring11="JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto && mvn clean install -DskipTests spring-boot:run"
