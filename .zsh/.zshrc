# deyyanl's .zshrc on MBP14
# Jul, 2022

# Exports
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="code"

# ZSH Theme
ZSH_THEME="spaceship"

# Update ZSH automatically without asking
zstyle ':omz:update' mode auto    

# Auto corrections
ENABLE_CORRECTION="true"

# Waiting dots (...) 
COMPLETION_WAITING_DOTS="true"

# History timestamps
HIST_STAMPS="mm/dd/yyyy"

# Plugins
plugins=(
    git
    sudo
    history
    dirhistory
)

# Run OhMyZSH and Antigen
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/antigen/antigen.zsh 
# Search path
fpath=($fpath "/Users/deyyanl/.zfunctions")

# Spaceship prompt
autoload -U promptinit; promptinit
prompt spaceship

# ZSH Autosugesstions plugin, via Antigen
antigen bundle zsh-users/zsh-autosuggestions
antigen apply