# Disable Powerlevel10k instant prompt warning
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Load Antigen
source ~/.antigen/antigen.zsh

# Set up Homebrew path (for Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load oh-my-zsh library
antigen use oh-my-zsh

# Plugin bundles
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle rupa/z
antigen bundle djui/alias-tips
antigen bundle Aloxaf/fzf-tab
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle "MichaelAquilina/zsh-you-should-use"
antigen bundle hlissner/zsh-autopair

# Theme
antigen bundle romkatv/powerlevel10k
antigen theme romkatv/powerlevel10k

# Apply all plugins
antigen apply

# fzf keybindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# User settings
export EDITOR=vim
alias ll="ls -lah"
