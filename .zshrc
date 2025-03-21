# Load Antigen
source ~/.antigen/antigen.zsh

# Load oh-my-zsh library
antigen use oh-my-zsh

# Bundles
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z
antigen bundle command-not-found

# Theme
antigen theme robbyrussell

# Apply all bundles
antigen apply

# User settings
export EDITOR=vim
alias ll="ls -lah"
