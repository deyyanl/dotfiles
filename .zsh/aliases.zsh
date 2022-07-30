# Aliases

# Change directory shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"

# General shortcuts
alias dl="cd ~/Downloads"
alias dc="cd ~/Documents"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"
alias g="git"

# Docker shortcuts
alias d="docker"
alias ds="docker service"
alias dco="docker container"

# App shortcuts
# Sometimes... when you're inside your beloved terminal, you don't want to use your mouse to reach the dock so you go this way...
alias insomnia="open -a /Applications/Insomnia.app"
alias mdc="open -a /Applications/MongoDB\ Compass.app"
alias dg="open -a /Applications/DataGrip.app"
alias aar="open -a /Applications/Adobe\ Acrobat\ Reader\ DC.app"
alias notion="open -a /Applications/Notion.app"
alias redisi="open -a/Applications/RedisInsight.app"

# ZSH 
alias ezsh="$EDITOR $HOME/.zshrc"
alias rzsh="source $HOME/.zshrc"

# Utilities
alias myip="curl http://ipecho.net/plain; echo"
alias pcd="ping 1.1.1.1"
alias pgd="ping 8.8.8.8"
alias pg="ping google.com"
alias n="npm"
alias ni="npm i"
alias nig="npm i -g"
alias nid="npm i -d"
alias y="yarn"
alias ya="yarn add"
alias rdns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias c="clear"
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias w="npm run watch"
alias dev="npm run start:dev"
alias path='echo -e ${PATH//:/\\n}'
alias iplocal="ifconfig | grep 'inet ' | grep -Fv 127.0.0.1 | awk '{print \$2}'"
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume output volume 80'"