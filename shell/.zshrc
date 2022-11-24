# .zshrc
ZSH_BASE=$HOME/dev/dotfiles

source $ZSH_BASE/antigen/antigen.zsh # Load Antigen

source ~/.aliases
source ~/.functions
source ~/.path

antigen use oh-my-zsh

# Default bundles
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle git-extras
antigen bundle git-flow
antigen bundle node
antigen bundle npm
antigen bundle rust
antigen bundle go

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle Sparragus/zsh-auto-nvm-use

# Terminal stuff
antigen bundle catppuccin/zsh-syntax-highlighting --branch=main
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle z

# Set the theme
antigen theme spaceship-prompt/spaceship-prompt

# Apply
antigen apply

clear
neofetch

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
